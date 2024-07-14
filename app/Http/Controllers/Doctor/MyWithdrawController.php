<?php

namespace App\Http\Controllers\Doctor;

use Auth;
use App\Setting;
use App\ManageText;
use App\MyWithdraw;
use App\Appointment;
use App\WithdrawMethod;
use App\NotificationText;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class MyWithdrawController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $doctor=Auth::guard('doctor')->user();
        $withdraws = MyWithdraw::where('doctor_id', $doctor->id)->get();
        $setting = Setting::first();

        $appointment = Appointment::where(['doctor_id' => $doctor->id, 'payment_status' => 1, 'already_treated' => 1])->get();
        $withdraw =  MyWithdraw::where('doctor_id', $doctor->id)->get();

        $total_earning = $appointment->sum('appointment_fee');
        $total_withdraw = $withdraw->sum('total_amount');
        $current_balance = $total_earning - $total_withdraw;

        $websiteLang=ManageText::all();


        return view('doctor.withdraw.withdraw', compact('withdraws','setting', 'websiteLang', 'total_earning', 'total_withdraw', 'current_balance'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $doctor=Auth::guard('doctor')->user();
        $methods = WithdrawMethod::whereStatus('1')->get();
        $websiteLang=ManageText::all();
        $setting = Setting::first();
        $appointment = Appointment::where(['doctor_id' => $doctor->id, 'payment_status' => 1, 'already_treated' => 1])->get();
        $withdraw =  MyWithdraw::where('doctor_id', $doctor->id)->get();

        $total_earning = $appointment->sum('appointment_fee');
        $total_withdraw = $withdraw->sum('total_amount');
        $current_balance = $total_earning - $total_withdraw;
        return view('doctor.withdraw.create_withdraw', compact('methods', 'websiteLang', 'total_earning', 'total_withdraw', 'current_balance', 'setting'));
    }


    public function getWithDrawAccountInfo($id){
        $method = WithdrawMethod::whereId($id)->first();
        $setting = Setting::first();
        $websiteLang=ManageText::all();
        return view('doctor.withdraw.withdraw_account_info', compact('method','setting', 'websiteLang'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $notify_lang=NotificationText::all();
        $rules = [
            'withdraw_method' => 'required',
            'withdraw_amount' => 'required|numeric',
            'account_info' => 'required',
        ];

        $customMessages = [
            'withdraw_method.required' => $notify_lang->where('lang_key','withdraw_method_required')->first()->custom_lang,
            'withdraw_amount.required' => $notify_lang->where('lang_key','withdraw_amount_required')->first()->custom_lang,
            'withdraw_amount.numeric' => $notify_lang->where('lang_key','please_provide_valid_amount')->first()->custom_lang,
            'account_info.required' => $notify_lang->where('lang_key','account_information_required')->first()->custom_lang,
        ];
        $this->validate($request, $rules, $customMessages);

        $doctor=Auth::guard('doctor')->user();

        if(!$doctor->fee){
            $notification = $notify_lang->where('lang_key','doctor_fillup_profile')->first()->custom_lang;
            $notification=array('messege'=>$notification,'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }


        $appointment = Appointment::where(['doctor_id' => $doctor->id, 'payment_status' => 1, 'already_treated' => 1])->get();
        $withdraw =  MyWithdraw::where('doctor_id', $doctor->id)->get();

        $total_earning = $appointment->sum('appointment_fee');
        $total_withdraw = $withdraw->sum('total_amount');
        $current_balance = $total_earning - $total_withdraw;

        if($request->withdraw_amount > $current_balance){
            $notification = $notify_lang->where('lang_key','sorry_Your_Payment_request')->first()->custom_lang;
            $notification=array('messege'=>$notification,'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }

        $method = WithdrawMethod::whereId($request->withdraw_method)->first();

        if($request->withdraw_amount >= $method->min_amount && $request->withdraw_amount <= $method->max_amount){
        
            $widthdraw = new MyWithdraw();
            $widthdraw->doctor_id = $doctor->id;
            $widthdraw->method_id = $method->id;
            $widthdraw->total_amount = $request->withdraw_amount;
            $withdraw_request = $request->withdraw_amount;
            $withdraw_charge = ($method->withdraw_charge / 100) * $withdraw_request;
            $widthdraw->withdraw_amount = $request->withdraw_amount - $withdraw_charge;
            $widthdraw->withdraw_charge = $withdraw_charge;
            $widthdraw->account_info = $request->account_info;
            $widthdraw->save();

            $notification = $notify_lang->where('lang_key','withdraw_request_send_successfully')->first()->custom_lang;
            $notification=array('messege'=>$notification,'alert-type'=>'success');
            return redirect()->route('doctor.withdraw.index')->with($notification);
        }else{
            $notification = $notify_lang->where('lang_key','range_not_available')->first()->custom_lang;
            $notification=array('messege'=>$notification,'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $withdraw = MyWithdraw::find($id);
        $setting = Setting::first();
        $websiteLang=ManageText::all();
        return view('doctor.withdraw.show_withdraw', compact('withdraw','setting', 'websiteLang'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
