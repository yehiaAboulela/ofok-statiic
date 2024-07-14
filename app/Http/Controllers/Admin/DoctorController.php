<?php
namespace App\Http\Controllers\Admin;

use Str;
use File;
use Hash;
use Mail;
use Image;
use App\Doctor;
use App\Message;
use App\Setting;
use App\Location;
use App\Schedule;
use App\Department;
use App\ManageText;
use App\Appointment;
use App\BannerImage;
use App\ZoomMeeting;
use App\EmailTemplate;
use App\MeetingHistory;
use App\ValidationText;
use App\ZoomCredential;
use App\NotificationText;

use App\Helpers\MailHelper;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Mail\DoctorLoginInformation;

class DoctorController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $doctors=Doctor::orderBy('id', 'desc')->get();
        $currency=Setting::first();
        $schedules=Schedule::all();
        $messages=Message::all();
        $appointments=Appointment::all();
        $websiteLang=ManageText::all();
        $image=BannerImage::first();
        return view('admin.doctor.index',compact('doctors','currency','schedules','messages','appointments','websiteLang', 'image'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $departments=Department::orderBy('name','asc')->get();
        $locations=Location::orderBy('location','asc')->get();
        $websiteLang=ManageText::all();
        return view('admin.doctor.create',compact('departments','locations','websiteLang'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

         // project demo mode check
         if(env('PROJECT_MODE')==0){
            $notification=array(
            'messege'=>env('NOTIFY_TEXT'),
            'alert-type'=>'error'
            );

        return redirect()->back()->with($notification);
        }
        // end


        $valid_lang=ValidationText::all();
        $rules = [
            'name'=>'required',
            'name_ar'=>'required',
            'email'=>'required|unique:doctors',
            'phone'=>'required',
            'password'=>'required',
            'designations'=>'required',
            'designations_ar'=>'required',
            'image'=>'required',
            'appointment_fee'=>'required',
            'department'=>'required',
            'location'=>'required',
            'status'=>'required',
            'show_homepage'=>'required'
        ];

        $customMessages = [
            'name.required' => $valid_lang->where('lang_key','name')->first()->custom_lang,
            'name_ar.required' => $valid_lang->where('lang_key','name')->first()->custom_lang,
            'email.required' => $valid_lang->where('lang_key','email')->first()->custom_lang,
            'email.unique' => $valid_lang->where('lang_key','unique_email')->first()->custom_lang,
            'phone.required' => $valid_lang->where('lang_key','phone')->first()->custom_lang,
            'password.required' => $valid_lang->where('lang_key','pass')->first()->custom_lang,
            'designations.required' => $valid_lang->where('lang_key','designation')->first()->custom_lang,
            'designations_ar.required' => $valid_lang->where('lang_key','designation')->first()->custom_lang,
            'appointment_fee.required' => $valid_lang->where('lang_key','fee')->first()->custom_lang,
            'department.required' => $valid_lang->where('lang_key','department')->first()->custom_lang,
            'location.required' => $valid_lang->where('lang_key','location')->first()->custom_lang,
            'image.required' => $valid_lang->where('lang_key','img')->first()->custom_lang,
        ];

        $this->validate($request, $rules, $customMessages);


        $image=$request->image;
        $extention=$image->getClientOriginalExtension();
        $name= 'doctor-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
        $image_path='uploads/custom-images/'.$name;

        Image::make($image)
                ->resize(500,null,function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path($image_path));

        $doctor=Doctor::create([
                'name'=>['en' => $request->name, 'ar' => $request->name_ar],
                'slug'=>Str::slug($request->name),
                'email'=>$request->email,
                'phone'=>$request->phone,
                'facebook'=>$request->facebook,
                'twitter'=>$request->twitter,
                'linkedin'=>$request->linkedin,
                'password'=>Hash::make($request->password),
                'designations'=>['en' => $request->designations, 'ar' => $request->designations_ar],
                'image'=>$image_path,
                'fee'=>$request->appointment_fee,
                'department_id'=>$request->department,
                'location_id'=>$request->location,
                'seo_title'=>$request->seo_title,
                'seo_description'=>$request->seo_description,
                'about'=>['en' => $request->about, 'ar' => $request->about_ar],
                'address'=>['en' => $request->address, 'ar' => $request->address_ar],
                'educations'=>['en' => $request->educations, 'ar' => $request->educations_ar],
                'experience'=>['en' => $request->experiences, 'ar' => $request->experiences_ar],
                'qualifications'=>['en' => $request->qualifications, 'ar' => $request->qualifications_ar],
                'status'=>$request->status,
                'show_homepage'=>$request->show_homepage,
                'email_verified' => 1,
            ]);


        $template=EmailTemplate::where('id',3)->first();
        $message=$template->description;
        $subject=$template->subject;
        $message=str_replace('{{doctor_name}}',$doctor->getTranslation('name', app()->currentLocale()),$message);
        $message=str_replace('{{email}}',$doctor->email,$message);
        $message=str_replace('{{password}}',$request->password,$message);
        MailHelper::setMailConfig();
        Mail::to($doctor->email)->send(new DoctorLoginInformation($message,$subject));

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','create')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.doctor.index')->with($notification);
    }


    public function edit(Doctor $doctor)
    {
        $departments=Department::orderBy('name','asc')->get();
        $locations=Location::orderBy('location','asc')->get();
        $websiteLang=ManageText::all();
        $image=BannerImage::first();
        return view('admin.doctor.edit',compact('departments','locations','doctor','websiteLang', 'image'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Doctor  $doctor
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Doctor $doctor)
    {

         // project demo mode check
         if(env('PROJECT_MODE')==0){
            $notification=array(
            'messege'=>env('NOTIFY_TEXT'),
            'alert-type'=>'error'
            );

        return redirect()->back()->with($notification);
        }
        // end


        $valid_lang=ValidationText::all();
        $rules = [
            'name'=>'required',
            'name_ar'=>'required',
            'email'=>'required|unique:doctors,email,'.$doctor->id,
            'phone'=>'required',
            'designations'=>'required',
            'designations_ar'=>'required',
            'appointment_fee'=>'required',
            'department'=>'required',
            'status'=>'required',
            'show_homepage'=>'required'
        ];

        $customMessages = [
            'name.required' => $valid_lang->where('lang_key','name')->first()->custom_lang,
            'name_ar.required' => $valid_lang->where('lang_key','name')->first()->custom_lang,
            'email.required' => $valid_lang->where('lang_key','email')->first()->custom_lang,
            'email.unique' => $valid_lang->where('lang_key','unique_email')->first()->custom_lang,
            'phone.required' => $valid_lang->where('lang_key','phone')->first()->custom_lang,
            'designations.required' => $valid_lang->where('lang_key','designation')->first()->custom_lang,
            'designations_ar.required' => $valid_lang->where('lang_key','designation')->first()->custom_lang,
            'appointment_fee.required' => $valid_lang->where('lang_key','fee')->first()->custom_lang,
            'department.required' => $valid_lang->where('lang_key','department')->first()->custom_lang,
            'location.required' => $valid_lang->where('lang_key','location')->first()->custom_lang,
        ];

        $this->validate($request, $rules, $customMessages);

        // upload new image
        $image_path=$doctor->image;
        if($request->image){
            $old_image=$doctor->image;
            $image=$request->image;
            $extention=$image->getClientOriginalExtension();
            $name= 'doctor-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $image_path='uploads/custom-images/'.$name;
            Image::make($image)
                    ->resize(500,null,function ($constraint) {
                        $constraint->aspectRatio();
                    })
                    ->save(public_path($image_path));

            if($old_image){
                if(File::exists(public_path($old_image)))unlink(public_path($old_image));
            }
        }

        Doctor::where('id',$doctor->id)->update([
            'name'=>['en' => $request->name, 'ar' => $request->name_ar],
            'slug'=>Str::slug($request->name),
            'email'=>$request->email,
            'phone'=>$request->phone,
            'facebook'=>$request->facebook,
            'twitter'=>$request->twitter,
            'linkedin'=>$request->linkedin,
            'designations'=>['en' => $request->designations, 'ar' => $request->designations_ar],
            'image'=>$image_path,
            'fee'=>$request->appointment_fee,
            'department_id'=>$request->department,
            'location_id'=>$request->location,
            'seo_title'=>$request->seo_title,
            'seo_description'=>$request->seo_description,
            'about'=>['en' => $request->about, 'ar' => $request->about_ar],
            'address'=>['en' => $request->address, 'ar' => $request->address_ar],
            'educations'=>['en' => $request->educations, 'ar' => $request->educations_ar],
            'experience'=>['en' => $request->experiences, 'ar' => $request->experiences_ar],
            'qualifications'=>['en' => $request->qualifications, 'ar' => $request->qualifications_ar],
            'status'=>$request->status,
            'show_homepage'=>$request->show_homepage
        ]);

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.doctor.index')->with($notification);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Doctor  $doctor
     * @return \Illuminate\Http\Response
     */
    public function destroy(Doctor $doctor)
    {

         // project demo mode check
         if(env('PROJECT_MODE')==0){
            $notification=array(
            'messege'=>env('NOTIFY_TEXT'),
            'alert-type'=>'error'
            );

        return redirect()->back()->with($notification);
        }
        // end

        $doctor_id=$doctor->id;
        $old_image=$doctor->image;
        MeetingHistory::where('doctor_id',$doctor->id)->delete();
        ZoomMeeting::where('doctor_id',$doctor->id)->delete();
        ZoomCredential::where('doctor_id',$doctor->id)->delete();
        $doctor->delete();
        if($old_image){
            if(File::exists(public_path($old_image)))unlink(public_path($old_image));
        }

        Message::where('doctor_id',$doctor_id)->delete();
        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','delete')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.doctor.index')->with($notification);
    }

     // change doctor status
     public function changeStatus($id){
        $doctor=Doctor::find($id);
        if($doctor->status==1){
            $doctor->status=0;
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','inactive')->first()->custom_lang;
            $message=$notification;
        }else{
            $doctor->status=1;
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','active')->first()->custom_lang;
            $message=$notification;
        }
        $doctor->save();
        return response()->json($message);

    }
}
