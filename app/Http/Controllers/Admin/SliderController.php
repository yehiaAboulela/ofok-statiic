<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Slider;
use Illuminate\Http\Request;
use Image;
use File;


use App\ManageText;
use App\ValidationText;
use App\NotificationText;

class SliderController extends Controller
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
        $sliders=Slider::all();
        $websiteLang=ManageText::all();
        return view('admin.slider.index',compact('sliders','websiteLang'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
            $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
        // end

        $valid_lang=ValidationText::all();
        $rules = [
            'image'=>'required',
            'image_ar'=>'required',
            'status'=>'required'
        ];


        $customMessages = [
            'image.required' => $valid_lang->where('lang_key','img')->first()->custom_lang,
            'image_ar.required' => $valid_lang->where('lang_key','img')->first()->custom_lang,
        ];

        $this->validate($request, $rules, $customMessages);
       

        $image=$request->image;
        $image_ar=$request->image_ar;
        $extention=$image->getClientOriginalExtension();
        $extention2=$image_ar->getClientOriginalExtension();
        $name= 'slider-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
        $name2= 'slider-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$extention2;

        $image_path='uploads/website-images/'.$name;
        $image_path2='uploads/website-images/'.$name2;
        Image::make($image)
                ->resize(1000,690)
                ->save(public_path($image_path));
                
        Image::make($image_ar)
                ->resize(1000,690)
                ->save(public_path($image_path2));
       
        Slider::create([
            'image'=>$image_path,
            'image_ar'=>$image_path2,
            'status'=>$request->status
        ]);
        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','create')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return back()->with($notification);
    }


    public function destroy(Slider $slider)
    {

        // project demo mode check
        if(env('PROJECT_MODE')==0){
            $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
        // end

        $oldImage=$slider->image;
        $slider->delete();
        if(File::exists(public_path($oldImage)))unlink(public_path($oldImage));
        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','delete')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return back()->with($notification);
    }


     // manage image status
     public function changeStatus($id){
        $slider=Slider::find($id);
        if($slider->status==1){
            $slider->status=0;
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','inactive')->first()->custom_lang;
            $message=$notification;
        }else{
            $slider->status=1;
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','active')->first()->custom_lang;
            $message=$notification;
        }
        $slider->save();
        return response()->json($message);

    }
}
