<?php

namespace App\Http\Controllers\Admin;

use App\Department;
use App\Units;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Str;
use Image;
use App\DepartmentImage;
use App\Doctor;
use File;

use App\ManageText;
use App\ValidationText;
use App\NotificationText;
class UnitController extends Controller
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
        $units=Units::with('images')->get();
        $doctors=Doctor::all();
        $websiteLang=ManageText::all();
        return view('admin.unit.index',compact('units','doctors','websiteLang'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $websiteLang=ManageText::all();
        return view('admin.unit.create',compact('websiteLang'));
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
            'name'=>'required|unique:departments',
            'name_ar'=>'required',
            'thumbnail_image'=>'required',
            'description'=>'required',
            'description_ar'=>'required',
            'status'=>'required',
            'show_homepage'=>'required',
        ];

        $customMessages = [
            'name.required' => $valid_lang->where('lang_key','name')->first()->custom_lang,
            'name_ar.required' => $valid_lang->where('lang_key','name')->first()->custom_lang,
            'name.unique' => $valid_lang->where('lang_key','unique_name')->first()->custom_lang,
            'thumbnail_image.required' => $valid_lang->where('lang_key','thumb_img')->first()->custom_lang,
            'description.required' => $valid_lang->where('lang_key','des')->first()->custom_lang,
            'description_ar.required' => $valid_lang->where('lang_key','des')->first()->custom_lang,
        ];

        // $this->validate($request, $rules, $customMessages);

        // for feature image
        $thumbnail_image=$request->thumbnail_image->getClientOriginalExtension();
        $thumbnail_image= 'unit-feature-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$thumbnail_image;
        $thumbnail_image='uploads/custom-images/'.$thumbnail_image;
        Image::make($request->thumbnail_image)
            ->resize(350,220)
            ->save(public_path($thumbnail_image));

        // insert Department
        $unit=Units::create([
            'name'=>['en' => $request->name, 'ar' => $request->name_ar],
            'slug'=>Str::slug($request->name),
            'description'=>['en' => $request->description, 'ar' => $request->description_ar],
            'seo_title'=>$request->seo_title ? $request->seo_title : 'service seo title',
            'seo_description'=>$request->seo_description ? $request->seo_description : 'service seo description',
            'status'=>$request->status,
            'thumbnail_image'=>$thumbnail_image,
            'show_homepage'=>$request->show_homepage,
        ]);

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.unit.index')->with($notification);

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Department  $department
     * @return \Illuminate\Http\Response
     */
    public function show(Department $department)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Department  $department
     * @return \Illuminate\Http\Response
     */
    public function edit(Units $unit)
    {
        $websiteLang=ManageText::all();
        return view('admin.unit.edit',compact('unit','websiteLang'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Department  $department
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Units $unit)
    {
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
            'name'=>'required|unique:units,name,'.$unit->id,
            'name_ar'=>'required',
            'description'=>'required',
            'description_ar'=>'required',
            'status'=>'required',
            'show_homepage'=>'required',
        ];

        $customMessages = [
            'name.required' => $valid_lang->where('lang_key','name')->first()->custom_lang,
            'name_ar.required' => $valid_lang->where('lang_key','name')->first()->custom_lang,
            'name.unique' => $valid_lang->where('lang_key','unique_name')->first()->custom_lang,
            'thumbnail_image.required' => $valid_lang->where('lang_key','thumb_img')->first()->custom_lang,
            'description.required' => $valid_lang->where('lang_key','des')->first()->custom_lang,
            'description_ar.required' => $valid_lang->where('lang_key','des')->first()->custom_lang,
        ];

        // $this->validate($request, $rules, $customMessages);

        if($request->file('thumbnail_image')){
            $old_thumbnail_image=$department->thumbnail_image;
             // for feature image
            $thumbnail_image=$request->thumbnail_image->getClientOriginalExtension();
            $thumbnail_image= 'department-thumbnail-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$thumbnail_image;
            $thumbnail_image='uploads/custom-images/'.$thumbnail_image;
            Image::make($request->thumbnail_image)
                ->resize(350,220)
                ->save(public_path($thumbnail_image));
            $unit->thumbnail_image=$thumbnail_image;

            if(File::exists(public_path($old_thumbnail_image)))unlink(public_path($old_thumbnail_image));

        }

        $unit->name=['en' => $request->name, 'ar' => $request->name_ar];
        $unit->slug=Str::slug($request->name);
        $unit->description=['en' => $request->description, 'ar' => $request->description_ar];
        $unit->seo_title=$request->seo_title ? $request->seo_title : 'department seo title';
        $unit->seo_description=$request->seo_description ? $request->seo_description : 'department seo description';
        $unit->status=$request->status;
        $unit->show_homepage=$request->show_homepage;
        $unit->save();

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.unit.index')->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Department  $department
     * @return \Illuminate\Http\Response
     */
    public function destroy(Units $unit)
    {
        if(env('PROJECT_MODE')==0){
            $notification=array(
            'messege'=>env('NOTIFY_TEXT'),
            'alert-type'=>'error'
            );

        return redirect()->back()->with($notification);
        }
        // end


        $oldImages=$unit->images;
        $old_feature_image=$unit->thumbnail_image;
        $unit->delete();
        if(File::exists(public_path($old_feature_image)))unlink(public_path($old_feature_image));
        foreach($oldImages as $img){
            if(File::exists(public_path($img->small_image)))unlink(public_path($img->small_image));
            if(File::exists(public_path($img->large_image)))unlink(public_path($img->large_image));

            $img->destroy($img->id);
        }

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','delete')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.unit.index')->with($notification);
    }


    // change department status
    public function changeStatus($id){
        $unit=Unit::find($id);
        if($unit->status==1){
            $unit->status=0;
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','inactive')->first()->custom_lang;
            $message=$notification;
        }else{
            $unit->status=1;
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','active')->first()->custom_lang;
            $message=$notification;
        }
        $unit->save();
        return response()->json($message);

    }


    // manage department images
    public function images($departmentId){
        $images=DepartmentImage::where('department_id',$departmentId)->get();
        $department=Department::find($departmentId);
        $websiteLang=ManageText::all();
        return view('admin.department.image',compact('images','department','websiteLang'));
    }

    // store feature images
    public function storeImage(Request $request,$departmentId){

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
            'image'=>'required'
        ];

        $customMessages = [
            'image.required' => $valid_lang->where('lang_key','img')->first()->custom_lang,
        ];

        $this->validate($request, $rules, $customMessages);

        foreach($request->image as $index => $row){
            $extention=$row->getClientOriginalExtension();
            $small_image= 'department-small-'.date('Y-m-d-h-i-s-').rand(999,9999).$index.'.'.$extention;
            $large_image= 'department-large-'.date('Y-m-d-h-i-s-').rand(999,9999).$index.'.'.$extention;

            // for small image
            $small_image='uploads/custom-images/'.$small_image;
            $large_image='uploads/custom-images/'.$large_image;
            Image::make($row)
                    ->resize(175,116)
                    ->save(public_path($small_image));
            Image::make($row)
                    ->resize(730,486)
                    ->save(public_path($large_image));
            DepartmentImage::create([
                'department_id'=>$departmentId,
                'small_image'=>$small_image,
                'large_image'=>$large_image
            ]);
        }

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','create')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return back()->with($notification);
    }

    // insert department thumbnail
    public function thumbnailImage(Request $request,$departmentId){

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
            'thumbnail_image'=>'required'
        ];

        $customMessages = [
            'thumbnail_image.required' => $valid_lang->where('lang_key','img')->first()->custom_lang,
        ];

        $this->validate($request, $rules, $customMessages);



        if(!$request->file('thumbnail_image')){
            return back()->with(['thumbnail_error'=>'Thumbnail Image is Required']);
        }else{
            $image=$request->thumbnail_image;
            $extention=$image->getClientOriginalExtension();
            $name= 'department-thumbnail-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $image_path='uploads/custom-images/'.$name;
            Image::make($image)
                    ->resize(350,220)
                    ->save(public_path($image_path));
            Department::where('id',$departmentId)->update(['thumbnail_image'=>$image_path]);
                // remove old thumbnail from storage
            if(File::exists(public_path($request->old_thumbnail)))unlink(public_path($request->old_thumbnail));
            $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','create')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

            return back()->with($notification);

        }
    }

    // delete department thumbnail image
    public function deleteThumbnail($unitId){

        if(env('PROJECT_MODE')==0){
            $notification=array(
            'messege'=>env('NOTIFY_TEXT'),
            'alert-type'=>'error'
            );

        return redirect()->back()->with($notification);
        }
        // end

        $unit=Department::find($unitId);
        $thumbnail_image=$unit->thumbnail_image;
        Department::where('id',$unitId)->update(['thumbnail_image'=>null]);
        if(File::exists(public_path($thumbnail_image)))unlink(public_path($thumbnail_image));
        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','delete')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

            return back()->with($notification);
    }

    // delete department image
    public function deleteImage($imageId){

        if(env('PROJECT_MODE')==0){
            $notification=array(
            'messege'=>env('NOTIFY_TEXT'),
            'alert-type'=>'error'
            );

        return redirect()->back()->with($notification);
        }
        // end

        $image=DepartmentImage::find($imageId);
        $small_image=$image->small_image;
        $large_image=$image->large_image;
        DepartmentImage::destroy($imageId);
        if(File::exists(public_path($small_image)))unlink(public_path($small_image));
        if(File::exists(public_path($large_image)))unlink(public_path($large_image));

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','delete')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return back()->with($notification);
    }
}
