<?php

namespace App\Http\Controllers\Patient;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\ContactMessage;
use App\Setting;
use App\EmailTemplate;
use Mail;
use App\Mail\ContactMessageInformation;
use App\Rules\Captcha;
use App\ValidationText;
use App\NotificationText;
use App\Helpers\MailHelper;
use Illuminate\Support\Facades\Validator;

class ContactController extends Controller
{
    public function message(Request $request){
  
            // project demo mode check
    if(env('PROJECT_MODE')==0){
        $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
        return redirect()->back()->with($notification);
    }
    // end

        $valid_lang=ValidationText::all();
        $rules = [
            'name'=>'required',
            'email'=>'required|email',
            // 'subject'=>'required',
            'message'=>'required',
            // 'g-recaptcha-response'=>new Captcha()
        ];

        $customMessages = [
            'name.required' => $valid_lang->where('lang_key','name')->first()->custom_lang,
            'email.required' => $valid_lang->where('lang_key','email')->first()->custom_lang,
            // 'subject.required' => $valid_lang->where('lang_key','subject')->first()->custom_lang,
            'message.required' => $valid_lang->where('lang_key','msg')->first()->custom_lang,
        ];
        
        $validator = Validator::make($request->all(), $rules, $customMessages);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }


        $contact=[
            'email'=>$request->email,
            'phone'=>$request->phone,
            'name'=>$request->name,
            'subject'=>$request->subject,
            'message'=>$request->message,
        ];
       
        if ($request->hasFile('audioFile')) {
              
        $audioFile = $request->file('audioFile');
$path = $audioFile->storeAs('audioo', 'custom_filename33.mp3');
dd('bmmb');
        // Validate the uploaded file
        $validator = Validator::make($request->all(), [
            'audioFile' => 'required|file|max:2048|mimes:audio/mpeg,audio/ogg,audio/wav,video/webm'
        ]);
    
        if ($validator->fails()) {
            // If validation fails, return errors
            return redirect()->back()->withErrors($validator)->withInput();
        }

    // If validation passes, store the uploaded file
    $path = $audioFile->store('audio'); // Replace 'audio' with your desired storage path
}
        
        
        $setting=Setting::first();
        $notify=NotificationText::first();
        if($setting->save_contact_message==1){
            ContactMessage::create($contact);
        }

        $template=EmailTemplate::where('id',2)->first();
        $message=$template->description;
        $subject=$template->subject;
        $message=str_replace('{{name}}',$contact['name'],$message);
        $message=str_replace('{{email}}',$contact['email'],$message);
        $message=str_replace('{{phone}}',$contact['phone'],$message);
        $message=str_replace('{{subject}}',$contact['subject'],$message);
        $message=str_replace('{{message}}',$contact['message'],$message);

        MailHelper::setMailConfig();
        Mail::to($setting->email)->send(new ContactMessageInformation($message,$subject));


        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','msg')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');
        return back()->with($notification);
    }
}
