<?php

namespace App\Http\Controllers\Admin;

use App\About;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Image;
use File;
use App\ManageText;
use App\ValidationText;
use App\NotificationText;
class AboutController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $about=About::first();
        if($about){
            $websiteLang=ManageText::all();
            return view('admin.about.edit',compact('about','websiteLang'));
        }else{
            return view('admin.about.create');
        }

    }


    public function updateAbout(Request $request,$id){
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
            'about_description'=>'required',
        ];

        $customMessages = [
            'about_description.required' => $valid_lang->where('lang_key','des')->first()->custom_lang,
        ];
        $this->validate($request, $rules, $customMessages);


        if($request->file('image')){
            //    manage about image
            $about_image=$request->image;
            $about_extention=$about_image->getClientOriginalExtension();
            $about_name= 'about-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$about_extention;
            $about_path='uploads/website-images/'.$about_name;
            $root_path=request()->getHost();
            Image::make($about_image)
                    ->resize(1000,null,function ($constraint) {
                        $constraint->aspectRatio();
                    })->crop(480,480)
                    ->save(public_path($about_path));

            About::where('id',$id)->update([
                'about_image'=>$about_path,
            ]);

            if(File::exists(public_path($request->old_about_image)))unlink(public_path($request->old_about_image));

        }
        if($request->file('background_image')){
            //    manage about image
            $background_image=$request->background_image;
            $about_extention=$background_image->getClientOriginalExtension();
            $about_name= 'about-background-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$about_extention;
            $bg_path='uploads/website-images/'.$about_name;
            $root_path=request()->getHost();
            Image::make($background_image)
                    ->resize(1000,null,function ($constraint) {
                        $constraint->aspectRatio();
                    })
                    ->save(public_path($bg_path));

            About::where('id',$id)->update([
                'background_image'=>$bg_path,
            ]);

            if(File::exists(public_path($request->old_background_image)))unlink(public_path($request->old_background_image));

        }

        About::where('id',$id)->update([
            'about_description'=>['en' => $request->about_description, 'ar' => $request->about_description_ar]
        ]);


        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.about.index')->with($notification);
    }


    public function updateMission(Request $request,$id){
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
            'mission_description'=>'required',
            'mission_description_ar'=>'required',
        ];

        $customMessages = [
            'mission_description.required' => $valid_lang->where('lang_key','des')->first()->custom_lang,
        ];


        if($request->file('image')){
            //    manage mission image
            $mission_image=$request->image;
            $mission_extention=$mission_image->getClientOriginalExtension();
            $mission_name= 'mission-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$mission_extention;
            $mission_path='uploads/website-images/'.$mission_name;
            $root_path=request()->getHost();
            Image::make($mission_image)
                    ->resize(1000,null,function ($constraint) {
                        $constraint->aspectRatio();
                    })->crop(525,452)
                    ->save(public_path($mission_path));

            About::where('id',$id)->update([
                'mission_image'=>$mission_path,
                'mission_description'=>['en' => $request->mission_description, 'ar' => $request->mission_description_ar]
            ]);

            if(File::exists(public_path($request->old_mission_image)))unlink(public_path($request->old_mission_image));


            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
            $notification=array('messege'=>$notification,'alert-type'=>'success');

            return redirect()->route('admin.about.index')->with($notification);
        }else {
            About::where('id',$id)->update([
                'mission_description'=>['en' => $request->mission_description, 'ar' => $request->mission_description_ar]
            ]);


            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
            $notification=array('messege'=>$notification,'alert-type'=>'success');
            return redirect()->route('admin.about.index')->with($notification);
        }
    }

    public function updateVision(Request $request,$id){

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
            'vision_description'=>'required',
            'vision_description_ar'=>'required',
        ];

        $customMessages = [
            'vision_description.required' => $valid_lang->where('lang_key','des')->first()->custom_lang,
        ];
        $this->validate($request, $rules, $customMessages);

        if($request->file('image')){
            //    manage mission image
            $vision_image=$request->image;
            $vision_extention=$vision_image->getClientOriginalExtension();
            $vision_name= 'mission-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$vision_extention;
            $vision_path='uploads/website-images/'.$vision_name;
            $root_path=request()->getHost();

            Image::make($mission_image)
                    ->resize(1000,null,function ($constraint) {
                        $constraint->aspectRatio();
                    })->crop(525,452)
                    ->save(public_path($vision_path));

            About::where('id',$id)->update([
                'vision_image'=>$vision_path,
                'vision_description'=>['en' => $request->vision_description, 'ar' => $request->vision_description_ar]
            ]);

            if(File::exists(public_path($request->old_vision_image)))unlink(public_path($request->old_vision_image));



            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
            $notification=array('messege'=>$notification,'alert-type'=>'success');

            return redirect()->route('admin.about.index')->with($notification);
        }else {
            About::where('id',$id)->update([
                'vision_description'=>['en' => $request->vision_description, 'ar' => $request->vision_description_ar]
            ]);

            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
            $notification=array('messege'=>$notification,'alert-type'=>'success');

            return redirect()->route('admin.about.index')->with($notification);
        }
    }

}
