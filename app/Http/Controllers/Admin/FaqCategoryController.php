<?php

namespace App\Http\Controllers\Admin;

use App\FaqCategory;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Str;

use App\ManageText;
use App\ValidationText;
use App\NotificationText;

class FaqCategoryController extends Controller
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
        $categories=FaqCategory::all();
        $websiteLang=ManageText::all();
        return view('admin.faq.category.index',compact('categories','websiteLang'));
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
            $notification=array(
            'messege'=>env('NOTIFY_TEXT'),
            'alert-type'=>'error'
            );

        return redirect()->back()->with($notification);
        }
        // end


        $valid_lang=ValidationText::all();
        $rules = [
            'name'=>'required|unique:faq_categories',
            'status'=>'required'
        ];

        $customMessages = [
            'name.required' => $valid_lang->where('lang_key','name')->first()->custom_lang,
            'name.unique' => $valid_lang->where('lang_key','unique_name')->first()->custom_lang,
        ];

        $this->validate($request, $rules, $customMessages);

        FaqCategory::create([
            'name'=>$request->name,
            'slug'=>Str::slug($request->name),
            'status'=>$request->status
        ]);

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','create')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.faq-category.index')->with($notification);
    }



    public function update(Request $request, FaqCategory $faqCategory)
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
            'name'=>'required|unique:faq_categories,name,'.$faqCategory->id,
            'status'=>'required'
        ];

        $customMessages = [
            'name.required' => $valid_lang->where('lang_key','name')->first()->custom_lang,
            'name.unique' => $valid_lang->where('lang_key','unique_name')->first()->custom_lang,
        ];

        $this->validate($request, $rules, $customMessages);

        $faqCategory->name=$request->name;
        $faqCategory->slug=Str::slug($request->name);
        $faqCategory->status=$request->status;
        $faqCategory->save();

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.faq-category.index')->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\FaqCategory  $faqCategory
     * @return \Illuminate\Http\Response
     */
    public function destroy(FaqCategory $faqCategory)
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

        $faqCategory->delete();
        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','delete')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.faq-category.index')->with($notification);
    }

    // change category status
    public function changeStatus($id){
        $category=FaqCategory::find($id);
        if($category->status==1){
            $category->status=0;
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','inactive')->first()->custom_lang;
            $message=$notification;
        }else{
            $category->status=1;
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','active')->first()->custom_lang;
            $message=$notification;
        }
        $category->save();
        return response()->json($message);

    }
}
