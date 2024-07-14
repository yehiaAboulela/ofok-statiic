<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Overview;
use Illuminate\Http\Request;


use App\ManageText;
use App\ValidationText;
use App\NotificationText;

class OverviewController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $overviews=Overview::all();
        $websiteLang=ManageText::all();
        return view('admin.overview.index',compact('overviews','websiteLang'));
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
            'qty'=>'required',
            'icon'=>'required',
        ];
        $customMessages = [
            'name.required' => $valid_lang->where('lang_key','location')->first()->custom_lang,
            'qty.required' => $valid_lang->where('lang_key','qty')->first()->custom_lang,
            'icon.unique' => $valid_lang->where('lang_key','icon')->first()->custom_lang,
        ];

        $this->validate($request, $rules, $customMessages);



        $overview=new Overview();
        $overview->name=['en' => $request->name, 'ar' => $request->name_ar];
        $overview->qty=$request->qty;
        $overview->icon=$request->icon;
        $overview->status=$request->status;
        $overview->save();

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','create')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.overview.index')->with($notification);
    }




    public function update(Request $request, Overview $overview)
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
            'qty'=>'required',
            'icon'=>'required',
        ];
        $customMessages = [
            'name.required' => $valid_lang->where('lang_key','location')->first()->custom_lang,
            'qty.required' => $valid_lang->where('lang_key','qty')->first()->custom_lang,
            'icon.unique' => $valid_lang->where('lang_key','icon')->first()->custom_lang,
        ];

        $this->validate($request, $rules, $customMessages);

        $overview->name=['en' => $request->name, 'ar' => $request->name_ar];
        $overview->qty=$request->qty;
        $overview->icon=$request->icon;
        $overview->status=$request->status;
        $overview->save();

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.overview.index')->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Overview  $overview
     * @return \Illuminate\Http\Response
     */
    public function destroy(Overview $overview)
    {

         // project demo mode check
         if(env('PROJECT_MODE')==0){
            $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
        // end


        $overview->delete();
        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','delete')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.overview.index')->with($notification);
    }

    public function changeStatus($id){
        $overview=Overview::find($id);
        if($overview->status==1){
            $overview->status=0;
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','inactive')->first()->custom_lang;
            $message=$notification;
        }else{
            $overview->status=1;
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','active')->first()->custom_lang;
            $message=$notification;
        }
        $overview->save();
        return response()->json($message);

    }
}
