<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Testimonial;
use Illuminate\Http\Request;
use Image;
use File;


use App\ManageText;
use App\ValidationText;
use App\NotificationText;
class TestimonialController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function index()
    {
        $testimonials=Testimonial::all();
        $websiteLang=ManageText::all();
        return view('admin.testimonial.index',compact('testimonials','websiteLang'));
    }


    public function store(Request $request)
    {
         // project demo mode check
         if(env('PROJECT_MODE')==0){
            $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
        // end
        $valid_lang=ValidationText::all();
        $rules = [
            'name'=>'required',
            'name_ar'=>'required',
            'designation'=>'required',
            'designation_ar'=>'required',
            'image'=>'required',
            'description'=>'required',
            'description_ar'=>'required',
            'status'=>'required',
            'show_homepage'=>'required',
        ];
        $customMessages = [
            'name.required' => $valid_lang->where('lang_key','name')->first()->custom_lang,
            'designation.required' => $valid_lang->where('lang_key','designation')->first()->custom_lang,
            'image.required' => $valid_lang->where('lang_key','img')->first()->custom_lang,
            'description.required' => $valid_lang->where('lang_key','des')->first()->custom_lang,
        ];
        $this->validate($request, $rules, $customMessages);


        $image=$request->image;
        $extention=$image->getClientOriginalExtension();
        $image_name= 'testimonial-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;

        // for small image
        $image_name='uploads/custom-images/'.$image_name;
        Image::make($image)
                ->resize(80,80)
                ->save(public_path($image_name));
        Testimonial::create([
            'name'=>['en' => $request->name, 'ar' => $request->name_ar],
            'designation'=>['en' => $request->designation, 'ar' => $request->designation_ar],
            'image'=>$image_name,
            'description'=>['en' => $request->description, 'ar' => $request->description_ar],
            'status'=>$request->status,
            'show_homepage'=>$request->show_homepage,
        ]);

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','create')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return back()->with($notification);
    }


    public function update(Request $request, Testimonial $testimonial)
    {

         // project demo mode check
         if(env('PROJECT_MODE')==0){
            $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
        // end

        $valid_lang=ValidationText::all();
        $rules = [
            'name'=>'required',
            'name_ar'=>'required',
            'designation'=>'required',
            'designation_ar'=>'required',
            'description'=>'required',
            'description_ar'=>'required',
            'status'=>'required',
            'show_homepage'=>'required',
        ];
        $customMessages = [
            'name.required' => $valid_lang->where('lang_key','name')->first()->custom_lang,
            'designation.required' => $valid_lang->where('lang_key','designation')->first()->custom_lang,
            'image.required' => $valid_lang->where('lang_key','img')->first()->custom_lang,
            'description.required' => $valid_lang->where('lang_key','des')->first()->custom_lang,
        ];
        $this->validate($request, $rules, $customMessages);


        if($request->file('image')){
            $old_image=$testimonial->image;
            $image=$request->image;
            $extention=$image->getClientOriginalExtension();
            $image_name= 'testimonial-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;

            // for small image
            $image_name='uploads/custom-images/'.$image_name;
            Image::make($image)
                ->resize(80,80)
                ->save(public_path($image_name));

            $testimonial->image=$image_name;
            if(File::exists(public_path($old_image)))unlink(public_path($old_image));
        }

        $testimonial->name=['en' => $request->name, 'ar' => $request->name_ar];
        $testimonial->designation=['en' => $request->designation, 'ar' => $request->designation_ar];
        $testimonial->description=['en' => $request->description, 'ar' => $request->description_ar];
        $testimonial->status=$request->status;
        $testimonial->show_homepage=$request->show_homepage;
        $testimonial->save();

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return back()->with($notification);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Testimonial  $testimonial
     * @return \Illuminate\Http\Response
     */
    public function destroy(Testimonial $testimonial)
    {

         // project demo mode check
         if(env('PROJECT_MODE')==0){
            $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
        // end


        $image=$testimonial->image;
        $testimonial->delete();
        if(File::exists(public_path($image)))unlink(public_path($image));
        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','delete')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return back()->with($notification);
    }

    public function changeStatus($id){
        $testimonial=Testimonial::find($id);
        if($testimonial->status==1){
            $testimonial->status=0;
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','inactive')->first()->custom_lang;
            $message=$notification;
        }else{
            $testimonial->status=1;
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','active')->first()->custom_lang;
            $message=$notification;
        }
        $testimonial->save();
        return response()->json($message);

    }
}
