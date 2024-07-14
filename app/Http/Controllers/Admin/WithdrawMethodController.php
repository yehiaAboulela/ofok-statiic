<?php

namespace App\Http\Controllers\Admin;

use App\Setting;
use App\ManageText;
use App\WithdrawMethod;
use App\NotificationText;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class WithdrawMethodController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index(){
        $methods = WithdrawMethod::all();
        $setting = Setting::first();
        $websiteLang=ManageText::all();
        return view('admin.withdraw_method.withdraw_method', compact('methods','setting', 'websiteLang'));
    }

    public function create(){
        $setting = Setting::first();
        $websiteLang=ManageText::all();
        return view('admin.withdraw_method.create_withdraw_method',compact('setting', 'websiteLang'));
    }

    public function store(Request $request){
        $notify_lang=NotificationText::all();
        $rules = [
            'name' => 'required|unique:withdraw_methods',
            'minimum_amount' => 'required|numeric',
            'maximum_amount' => 'required|numeric',
            'withdraw_charge' => 'required|numeric',
            'description' => 'required',
        ];
        $customMessages = [
            'name.required' => $notify_lang->where('lang_key','name_is_required')->first()->custom_lang,
            'name.unique' => $notify_lang->where('lang_key','name_already_exists')->first()->custom_lang,
            'minimum_amount.required' => $notify_lang->where('lang_key','minimum_amount_required')->first()->custom_lang,
            'maximum_amount.required' => $notify_lang->where('lang_key','maximum_amount_required')->first()->custom_lang,
            'withdraw_charge.required' => $notify_lang->where('lang_key','withdraw_charge_required')->first()->custom_lang,
            'minimum_amount.numeric' => $notify_lang->where('lang_key','please_provide_valid_amount')->first()->custom_lang,
            'maximum_amount.numeric' => $notify_lang->where('lang_key','please_provide_valid_amount')->first()->custom_lang,
            'withdraw_charge.numeric' => $notify_lang->where('lang_key','please_provide_valid_charge')->first()->custom_lang,

            'description.required' => $notify_lang->where('lang_key','description_required')->first()->custom_lang,
        ];
        $this->validate($request, $rules,$customMessages);

        $method = new WithdrawMethod();
        $method->name = $request->name;
        $method->min_amount = $request->minimum_amount;
        $method->max_amount = $request->maximum_amount;
        $method->withdraw_charge = $request->withdraw_charge;
        $method->description = $request->description;
        $method->status = 1;
        $method->save();

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','create')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->route('admin.withdraw-method.index')->with($notification);
    }

    public function edit($id){
        $method = WithdrawMethod::find($id);
        $setting = Setting::first();
        $websiteLang=ManageText::all();
        return view('admin.withdraw_method.edit_withdraw_method', compact('method','setting', 'websiteLang'));
    }

    public function update(Request $request, $id){

        $method = WithdrawMethod::find($id);
        $notify_lang=NotificationText::all();
        $rules = [
            'name' => 'required|unique:withdraw_methods,name,'.$method->id,
            'minimum_amount' => 'required|numeric',
            'maximum_amount' => 'required|numeric',
            'withdraw_charge' => 'required|numeric',
            'description' => 'required',
        ];

        $customMessages = [
            'name.required' => $notify_lang->where('lang_key','name_is_required')->first()->custom_lang,
            'name.unique' => $notify_lang->where('lang_key','name_already_exists')->first()->custom_lang,
            'minimum_amount.required' => $notify_lang->where('lang_key','minimum_amount_required')->first()->custom_lang,
            'maximum_amount.required' => $notify_lang->where('lang_key','maximum_amount_required')->first()->custom_lang,
            'withdraw_charge.required' => $notify_lang->where('lang_key','withdraw_charge_required')->first()->custom_lang,
            'minimum_amount.numeric' => $notify_lang->where('lang_key','please_provide_valid_amount')->first()->custom_lang,
            'maximum_amount.numeric' => $notify_lang->where('lang_key','please_provide_valid_amount')->first()->custom_lang,
            'withdraw_charge.numeric' => $notify_lang->where('lang_key','please_provide_valid_charge')->first()->custom_lang,
            'description.required' => $notify_lang->where('lang_key','description_required')->first()->custom_lang,
        ];
        $this->validate($request, $rules,$customMessages);

        
        $method->name = $request->name;
        $method->min_amount = $request->minimum_amount;
        $method->max_amount = $request->maximum_amount;
        $method->withdraw_charge = $request->withdraw_charge;
        $method->description = $request->description;
        $method->status = 1;
        $method->save();

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','update')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->route('admin.withdraw-method.index')->with($notification);
    }

    public function destroy($id){

        if(env('PROJECT_MODE')==0){
            $notification=array(
            'messege'=>env('NOTIFY_TEXT'),
            'alert-type'=>'error'
            );

        return redirect()->back()->with($notification);
        }

        $method = WithdrawMethod::find($id);
        $method->delete();
        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','delete')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->route('admin.withdraw-method.index')->with($notification);
    }

    public function changeStatus($id){
        $method = WithdrawMethod::find($id);
        if($method->status==1){
            $method->status=0;
            $method->save();
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','inactive')->first()->custom_lang;
            $message=$notification;
        }else{
            $method->status=1;
            $method->save();
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','active')->first()->custom_lang;
            $message = $notification;
        }
        return response()->json($message);
    }
}
