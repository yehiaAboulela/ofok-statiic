<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Setting;

use App\ManageText;
use App\ValidationText;
use App\NotificationText;

class SliderContentController extends Controller
{
    public function index(){
        $content=Setting::first();
        $websiteLang=ManageText::all();
        return view('admin.slider.content.index',compact('content','websiteLang'));
    }

    public function update(Request $request,$id){

        // project demo mode check
        if(env('PROJECT_MODE')==0){
            $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
        // end

        $valid_lang=ValidationText::all();
        $rules = [
            'slider_heading'=>'required',
            'slider_heading_ar'=>'required',
            'slider_description'=>'required',
            'slider_description_ar'=>'required',
        ];


        $customMessages = [
            'slider_heading.required' => $valid_lang->where('lang_key','slider_heading')->first()->custom_lang,
            'slider_description.required' => $valid_lang->where('lang_key','slider_des')->first()->custom_lang,
        ];

        $this->validate($request, $rules, $customMessages);

        Setting::where('id',$id)->update([
            'slider_heading'=>['en' => $request->slider_heading, 'ar' => $request->slider_heading_ar],
            'slider_description'=>['en' => $request->slider_description, 'ar' => $request->slider_description_ar],
        ]);

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return back()->with($notification);
    }
}
