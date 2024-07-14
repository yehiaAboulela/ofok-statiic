<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Setting;

use App\ManageText;
use App\ValidationText;
use App\NotificationText;

class SubscriberContentController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function index(){
        $setting=Setting::first();
        $websiteLang=ManageText::all();
        return view('admin.subscriber.content.index',compact('setting','websiteLang'));
    }

    public function Update(Request $request,$id){

         // project demo mode check
         if(env('PROJECT_MODE')==0){
            $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
        // end

        $valid_lang=ValidationText::all();
        $rules = [
            'subscribe_heading'=>'required',
            'subscribe_heading_ar'=>'required',
            'subscribe_description'=>'required',
            'subscribe_description_ar'=>'required'
        ];
        $customMessages = [
            'subscribe_heading.required' => $valid_lang->where('lang_key','subscribe_heading')->first()->custom_lang,
            'subscribe_heading_ar.required' => $valid_lang->where('lang_key','subscribe_heading')->first()->custom_lang,
            'subscribe_description.required' => $valid_lang->where('lang_key','subscribe_description')->first()->custom_lang,
            'subscribe_description_ar.required' => $valid_lang->where('lang_key','subscribe_description')->first()->custom_lang,
        ];

        $this->validate($request, $rules, $customMessages);


        Setting::where('id',$id)->update([
            'subscribe_heading'=>['en' => $request->subscribe_heading, 'ar' => $request->subscribe_heading_ar],
            'subscribe_description'=>['en' => $request->subscribe_description, 'ar' => $request->subscribe_description_ar],
        ]);
        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return back()->with($notification);
    }
}
