<?php

namespace App\Http\Controllers\Doctor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\ZoomCredential;

use App\ManageText;
use App\ValidationText;
use App\NotificationText;


class ZoomCredentialController extends Controller
{



    public function __construct()
    {
        $this->middleware('auth:doctor,admin');
    }

    public function index(){

        //$doctor=Auth::guard('admin')->user();
        //$credential=ZoomCredential::where('doctor_id',$doctor->id)->first();
        $credential = ZoomCredential::first();

        $websiteLang=ManageText::all();
        return view('admin.settings.zoom.setting.index',compact('credential','websiteLang'));
    }

    public function store(Request $request){

            // project demo mode check
        if(env('PROJECT_MODE')==0){
            $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
        // end


        $valid_lang=ValidationText::all();
        $rules = [
            'zoom_api_key'=>'required',
            'zoom_api_secret'=>'required',
        ];
        $customMessages = [
            'zoom_api_key.required' => $valid_lang->where('lang_key','zoom_api_key')->first()->custom_lang,
            'zoom_api_secret.required' => $valid_lang->where('lang_key','zoom_secret')->first()->custom_lang,
        ];
        $this->validate($request, $rules, $customMessages);


        $doctor=Auth::guard('doctor')->user();
        $credential=new ZoomCredential();
        $credential->doctor_id=$doctor->id;
        $credential->zoom_api_key=$request->zoom_api_key;
        $credential->zoom_api_secret=$request->zoom_api_secret;
        $credential->save();


        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','create')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->back()->with($notification);
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
            'zoom_api_key'=>'required',
            'zoom_api_secret'=>'required',
            'zoom_account_id'=>'nullable',
        ];
        $customMessages = [
            'zoom_api_key.required' => $valid_lang->where('lang_key','zoom_api_key')->first()->custom_lang,
            'zoom_api_secret.required' => $valid_lang->where('lang_key','zoom_secret')->first()->custom_lang,
        ];
        $this->validate($request, $rules, $customMessages);

        //$doctor=Auth::guard('doctor')->user();
        $credential=ZoomCredential::find($id);
        //$credential->doctor_id=$doctor->id;
        $credential->zoom_api_key=$request->zoom_api_key;
        $credential->zoom_api_secret=$request->zoom_api_secret;
        $credential->account_id=$request->zoom_account_id ?? '';
        $credential->save();

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->back()->with($notification);
    }
}
