<?php

namespace App\Http\Controllers\Doctor\Auth;

use Str;
use App\Doctor;
use App\Setting;
use App\Location;
use App\Department;
use App\ManageText;
use App\Navigation;
use App\BannerImage;
use App\EmailTemplate;
use App\ValidationText;
use App\NotificationText;
use App\Helpers\MailHelper;
use Illuminate\Http\Request;
use App\Mail\DoctorVerification;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;

class DoctorRegisterController extends Controller
{
    public function doctorRegisterForm(){
        $departments=Department::where('status', 1)->orderBy('name','asc')->get();
        $locations=Location::where('status', 1)->orderBy('location','asc')->get();
        $image=BannerImage::first();
        $websiteLang=ManageText::all();
        $setting=Setting::first();
        $navigation=Navigation::first();
        return view('doctor.auth.register',compact('image','websiteLang', 'setting', 'navigation', 'departments', 'locations'));
    }
    
    public function doctorRegister(Request $request){
        $valid_lang=ValidationText::all();
        $rules = [
            'name'=>'required',
            'designations' => 'required',
            'email'=>'required|unique:doctors',
            'phone'=>'required',
            'password'=>'required',
            'department'=>'required',
            'location'=>'required',
        ];

        $customMessages = [
            'name.required' => $valid_lang->where('lang_key','name')->first()->custom_lang,
            'designations.required' => 'Designation is required',
            'email.required' => $valid_lang->where('lang_key','email')->first()->custom_lang,
            'email.unique' => $valid_lang->where('lang_key','unique_email')->first()->custom_lang,
            'phone.required' => $valid_lang->where('lang_key','phone')->first()->custom_lang,
            'password.required' => $valid_lang->where('lang_key','pass')->first()->custom_lang,
            'department.required' => $valid_lang->where('lang_key','department')->first()->custom_lang,
            'location.required' => $valid_lang->where('lang_key','location')->first()->custom_lang,
        ];

        $this->validate($request, $rules, $customMessages);

        
        $doctor = new Doctor();
        $doctor->name = $request->name;
        $doctor->designations = $request->designations;
        $doctor->slug=Str::slug($request->name);
        $doctor->email = $request->email;
        $doctor->phone = $request->phone;
        $doctor->password = Hash::make($request->password);
        $doctor->fee = 0;
        $doctor->image = 0;
        $doctor->department_id = $request->department;
        $doctor->location_id = $request->location;
        $doctor->email_verified_token = Str::random(100);
        $doctor->status = 0;
        $doctor->show_homepage = 0;
        $doctor->save();

        $template=EmailTemplate::where('id',9)->first();
        $message=$template->description;
        $subject=$template->subject;
        $message=str_replace('{{user_name}}',$doctor->name,$message);
        MailHelper::setMailConfig();
        Mail::to($doctor->email)->send(new DoctorVerification($doctor,$message,$subject));

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','register')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return Redirect()->back()->with($notification);
    }

    public function doctorVerify($token){
        $doctor=Doctor::where('email_verified_token',$token)->first();
        $notify=NotificationText::first();
        if($doctor){
            $doctor->email_verified_token=null;
            $doctor->status=1;
            $doctor->email_verified=1;
            $doctor->save();
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','verify')->first()->custom_lang;
            $notification=array('messege'=>$notification,'alert-type'=>'success');
            return  redirect()->route('doctor.login')->with($notification);
        }else{

            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','invalid_token')->first()->custom_lang;
            $notification=array('messege'=>$notification,'alert-type'=>'error');
            return redirect()->route('doctor.register')->with($notification);
        }
    }
}
