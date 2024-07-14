<?php

namespace App\Http\Controllers\Doctor;

use Auth;
use File;
use Hash;
use Image;
use App\Doctor;
use App\Location;
use App\Department;
use App\ManageText;
use App\BannerImage;

use App\ValidationText;
use App\NotificationText;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DoctorProfileController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:doctor');
    }
    public function profile(){
        $doctor=Auth::guard('doctor')->user();
        $websiteLang=ManageText::all();
        $image=BannerImage::first();
        $departments=Department::where('status', 1)->orderBy('name','asc')->get();
        $locations=Location::where('status', 1)->orderBy('location','asc')->get();
        return view('doctor.profile.index',compact('doctor','websiteLang', 'image', 'departments', 'locations'));
    }

    public function updateProfile(Request $request){

            // project demo mode check
    if(env('PROJECT_MODE')==0){
        $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
        return redirect()->back()->with($notification);
    }
    // end


        $valid_lang=ValidationText::all();
        $rules = [
            'name'=>'required',
            'phone'=>'required',
            'designations'=>'required',
            'fee'=>'required|numeric',
            'department'=>'required',
            'location'=>'required',
            'about'=>'required',
            'address'=>'required',
            'educations'=>'required',
            'experiences'=>'required',
            'qualifications'=>'required',
        ];


        $customMessages = [
            'name.required' => $valid_lang->where('lang_key','name')->first()->custom_lang,
            'phone.required' => $valid_lang->where('lang_key','phone')->first()->custom_lang,
            'designations.required' => $valid_lang->where('lang_key','designation')->first()->custom_lang,
            'fee.required' => $valid_lang->where('lang_key','fee')->first()->custom_lang,
            'fee.numeric' => $valid_lang->where('lang_key','please_provide_valid_fee')->first()->custom_lang,
            'department.required' => $valid_lang->where('lang_key','department')->first()->custom_lang,
            'location.required' => $valid_lang->where('lang_key','location')->first()->custom_lang,
            'about.required' => $valid_lang->where('lang_key','about')->first()->custom_lang,
            'address.required' => $valid_lang->where('lang_key','address')->first()->custom_lang,
            'educations.required' => $valid_lang->where('lang_key','education')->first()->custom_lang,
            'experiences.required' => $valid_lang->where('lang_key','experience')->first()->custom_lang,
            'qualifications.required' => $valid_lang->where('lang_key','qualification')->first()->custom_lang,
        ];

        $this->validate($request, $rules, $customMessages);




        if($request->image){
            $old_image=$request->old_image;
            $image=$request->image;
            $extention=$image->getClientOriginalExtension();
            $name= 'doctor-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $image_path='uploads/custom-images/'.$name;

            Image::make($image)
                    ->resize(500,null,function ($constraint) {
                        $constraint->aspectRatio();
                    })
                    ->save(public_path($image_path));


            Doctor::where('id',Auth::guard('doctor')->user()->id)->update([
                'name'=>$request->name,
                'phone'=>$request->phone,
                'image'=>$image_path,
                'designations'=>$request->designations,
                'fee'=>$request->fee,
                'department_id' =>$request->department,
                'location_id' =>$request->location,
                'facebook'=>$request->facebook,
                'twitter'=>$request->twitter,
                'linkedin'=>$request->linkedin,
                'about'=>$request->about,
                'address'=>$request->address,
                'educations'=>$request->educations,
                'experience'=>$request->experiences,
                'qualifications'=>$request->qualifications,
            ]);
            if($old_image){
                if(File::exists(public_path($old_image)))unlink(public_path($old_image));
            }
        }else{
            Doctor::where('id',Auth::guard('doctor')->user()->id)->update([
                'name'=>$request->name,
                'phone'=>$request->phone,
                'designations'=>$request->designations,
                'fee'=>$request->fee,
                'department_id' =>$request->department,
                'location_id' =>$request->location,
                'facebook'=>$request->facebook,
                'twitter'=>$request->twitter,
                'linkedin'=>$request->linkedin,
                'about'=>$request->about,
                'address'=>$request->address,
                'educations'=>$request->educations,
                'experience'=>$request->experiences,
                'qualifications'=>$request->qualifications,
            ]);
        }



        $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
            $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('doctor.profile')->with($notification);
    }


    public function changePassword(Request $request){

            // project demo mode check
    if(env('PROJECT_MODE')==0){
        $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
        return redirect()->back()->with($notification);
    }
    // end


        $valid_lang=ValidationText::all();
        $rules = [
            'password'=>'required|confirmed'
        ];


        $customMessages = [
            'password.required' => $valid_lang->where('lang_key','pass')->first()->custom_lang,
            'password.confirmed' => $valid_lang->where('lang_key','confirm_pass')->first()->custom_lang,

        ];

        $this->validate($request, $rules, $customMessages);


        Doctor::where('id',Auth::guard('doctor')->user()->id)->update(['password'=>Hash::make($request->password)]);

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('doctor.profile')->with($notification);
    }
}
