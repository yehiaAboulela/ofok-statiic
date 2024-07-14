<?php

namespace App\Http\Controllers\Admin;

use App\Setting;
use App\ManageText;
use App\MyWithdraw;
use App\EmailTemplate;
use App\NotificationText;
use App\Helpers\MailHelper;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Mail\DoctorWithdrawApproval;
use Illuminate\Support\Facades\Mail;

class DoctorWithdrawController extends Controller
{
    public function index(){
        $withdraws = MyWithdraw::with('doctor', 'method')->orderBy('id','desc')->get();    
        $setting = Setting::first();
        $websiteLang=ManageText::all();
        return view('admin.doctor_withdraw.index', compact('withdraws','setting', 'websiteLang'));
    }

    public function pendingWithdraw(){
        $withdraws = MyWithdraw::with('doctor', 'method')->where('status', 0)->orderBy('id','desc')->get();    
        $setting = Setting::first();
        $websiteLang=ManageText::all();
        return view('admin.doctor_withdraw.pending_withdraw', compact('withdraws','setting', 'websiteLang'));
    }

    public function show($id){
        $setting = Setting::first();
        $withdraw = MyWithdraw::find($id);
        $websiteLang = ManageText::all();
        return view('admin.doctor_withdraw.show', compact('withdraw','setting', 'websiteLang'));
    }


    public function destroy($id){

        if(env('PROJECT_MODE')==0){
            $notification=array(
            'messege'=>env('NOTIFY_TEXT'),
            'alert-type'=>'error'
            );

        return redirect()->back()->with($notification);
        }

        $withdraw = MyWithdraw::find($id);
        $withdraw->delete();
        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','delete')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->route('admin.doctor-withdraw')->with($notification);
    }

    public function approvedWithdraw($id){
        $withdraw = MyWithdraw::find($id);
        $withdraw->status = 1;
        $withdraw->approved_date = date('Y-m-d');
        $withdraw->save();

        $setting = Setting::first();

        $doctor = $withdraw->doctor;
        $template=EmailTemplate::where('id',10)->first();
        $message=$template->description;
        $subject=$template->subject;
        $message=str_replace('{{doctor_name}}',$doctor->name,$message);
        $message=str_replace('{{withdraw_method}}',$withdraw->method->name,$message);
        $message=str_replace('{{total_amount}}',$setting->currency_icon .$withdraw->total_amount,$message);
        $message=str_replace('{{withdraw_charge}}',$setting->currency_icon .($withdraw->total_amount - $withdraw->withdraw_amount),$message);
        $message=str_replace('{{withdraw_amount}}',$setting->currency_icon .$withdraw->withdraw_amount,$message);
        $message=str_replace('{{approval_date}}',$withdraw->approved_date,$message);
        MailHelper::setMailConfig();
        Mail::to($doctor->email)->send(new DoctorWithdrawApproval($subject,$message));

        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','withdraw_request_approval')->first()->custom_lang;
        $notification=array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->route('admin.doctor-withdraw')->with($notification);
    }
}
