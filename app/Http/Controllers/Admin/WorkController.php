<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Work;
use Illuminate\Http\Request;
use Image;
use File;

use App\ManageText;
use App\ValidationText;
use App\NotificationText;


class WorkController extends Controller
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
        $work=Work::first();
        if($work){
            $websiteLang=ManageText::all();
            return view('admin.work.edit',compact('work','websiteLang'));
        }
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
            'image'=>'required',
            'video'=>'required',
            'title'=>'required',
            'title_ar'=>'required',
            'description'=>'required',
            'description_ar'=>'required',
        ];
        $customMessages = [
            'image.required' => $valid_lang->where('lang_key','img')->first()->custom_lang,
            'video.required' => $valid_lang->where('lang_key','video')->first()->custom_lang,
            'title.required' => $valid_lang->where('lang_key','title')->first()->custom_lang,
            'title_ar.required' => $valid_lang->where('lang_key','title_ar')->first()->custom_lang,
            'description.required' => $valid_lang->where('lang_key','des')->first()->custom_lang,
            'description_ar.required' => $valid_lang->where('lang_key','des_ar')->first()->custom_lang,
        ];

        $this->validate($request, $rules, $customMessages);
        
        

        $image=$request->image;
        $extention=$image->getClientOriginalExtension();
        $name= 'work-background-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;

        $image_path='uploads/website-images/'.$name;
        Image::make($image)
                ->resize(645,645)
                ->save(public_path($image_path));

        Work::create([
            'image'=>$image_path,
            'video'=>$request->video,
            'title'=>$request->title,
            'title_ar'=>$request->title_ar,
            'description'=>$request->description,
            'description_ar'=>$request->description_ar,
        ]);

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','create')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.work.index')->with($notification);
    }



    public function update(Request $request, Work $work)
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
            'video'=>'required',
            'title'=>'required',
            'title_ar'=>'required',
            'description'=>'required',
            'description_ar'=>'required',
        ];
         $customMessages = [
            'image.required' => $valid_lang->where('lang_key','img')->first()->custom_lang,
            'video.required' => $valid_lang->where('lang_key','video')->first()->custom_lang,
            'title.required' => $valid_lang->where('lang_key','title')->first()->custom_lang,
            'title_ar.required' => $valid_lang->where('lang_key','title')->first()->custom_lang,
            'description.required' => $valid_lang->where('lang_key','des')->first()->custom_lang,
            'description_ar.required' => $valid_lang->where('lang_key','des')->first()->custom_lang,
        ];

        // $this->validate($request, $rules, $customMessages);


        if($request->file('image')){
            $old_image=$work->image;
            $image=$request->image;
            $extention=$image->getClientOriginalExtension();
            $name= 'work-background-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;

            $image_path='uploads/website-images/'.$name;
            Image::make($image)
                    ->resize(645,645)
                    ->save(public_path($image_path));

            Work::where('id',$work->id)->update([
                'image'=>$image_path,
                'video'=>$request->video,
                'title'=>$request->title,
                'title_ar'=>$request->title_ar,
                'description'=>$request->description,
                'description_ar'=>$request->description_ar,
            ]);
            if(File::exists(public_path($old_image)))unlink(public_path($old_image));

        }else{
            Work::where('id',$work->id)->update([
                'video'=>$request->video,
                'title'=>$request->title,
                'title_ar'=>$request->title_ar,
                'description'=>$request->description,
                'description_ar'=>$request->description_ar,
            ]);
        }


        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.work.index')->with($notification);
    }
}
