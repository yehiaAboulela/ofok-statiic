<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\WorkFaq;
use Illuminate\Http\Request;


use App\ManageText;
use App\ValidationText;
use App\NotificationText;


class WorkFaqController extends Controller
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
        $faqs=WorkFaq::all();
        $websiteLang=ManageText::all();
        return view('admin.work.faq.index',compact('faqs','websiteLang'));
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
            'question'=>'required',
            'question_ar'=>'required',
            'answer'=>'required',
            'answer_ar'=>'required',
            'status'=>'required'
        ];
        $customMessages = [
            'question.required' => $valid_lang->where('lang_key','qus')->first()->custom_lang,
            'question_ar.required' => $valid_lang->where('lang_key','qus')->first()->custom_lang,
            'answer.required' => $valid_lang->where('lang_key','ans')->first()->custom_lang,
            'answer_ar.required' => $valid_lang->where('lang_key','ans')->first()->custom_lang,
        ];

        $this->validate($request, $rules, $customMessages);


        WorkFaq::create([
            'question'=>$request->question,
            'question_ar'=>$request->question_ar,
            'answer'=>$request->answer,
            'answer_ar'=>$request->answer_ar,
            'status'=>$request->status,
        ]);

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','create')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.work-faq.index')->with($notification);
    }



    public function update(Request $request, WorkFaq $workFaq)
    {

         // project demo mode check
         if(env('PROJECT_MODE')==0){
            $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
        // end
        $valid_lang=ValidationText::all();
        $rules = [
            'question'=>'required',
            'answer'=>'required',
            'status'=>'required'
        ];
        $customMessages = [
            'question.required' => $valid_lang->where('lang_key','qus')->first()->custom_lang,
            'answer.required' => $valid_lang->where('lang_key','ans')->first()->custom_lang,
        ];

        $this->validate($request, $rules, $customMessages);


        WorkFaq::where('id',$workFaq->id)->update([
            'question'=>$request->question,
            'answer'=>$request->answer,
            'status'=>$request->status,
        ]);

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.work-faq.index')->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\WorkFaq  $workFaq
     * @return \Illuminate\Http\Response
     */
    public function destroy(WorkFaq $workFaq)
    {

         // project demo mode check
         if(env('PROJECT_MODE')==0){
            $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
        // end


        $workFaq->delete();
        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','delete')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.work-faq.index')->with($notification);
    }

    public function changeStatus($id){
        $workFaq=WorkFaq::find($id);
        if($workFaq->status==1){
            $workFaq->status=0;
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','inactive')->first()->custom_lang;
            $message=$notification;
        }else{
            $workFaq->status=1;
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','active')->first()->custom_lang;
            $message=$notification;
        }
        $workFaq->save();
        return response()->json($message);

    }
}
