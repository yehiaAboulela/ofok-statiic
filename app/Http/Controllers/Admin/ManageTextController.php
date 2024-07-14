<?php

namespace App\Http\Controllers\Admin;

use App\Doctor;
use App\ManageText;
use App\EmailTemplate;
use App\ValidationText;
use App\NotificationText;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ManageTextController extends Controller
{
  public function manageText(){
      $texts = [
          'lang_key' => [
            'doctor_withdraw',
            'doctor',
            'withdraw_method',
            'charge',
            'total_amount',
            'withdraw_amount',
            'success',
            'sending',
            'show_withdraw',
            'withdraw_charge',
            'withdraw_charge_amount',
            'status',
            'requested_date',
            'approved_date',
            'account_information',
            'approve_withdraw',
            'delete_withdraw_request',
            'withdraw_approved_confirmation',
            'are_you_sure_approved_this_withdraw_request',
            'close',
            'yes_approve',
            'create_method',
            'create_withdraw_method',
            'name',
            'minimum_amount',
            'maximum_amount',
            'edit_method',
            'edit_withdraw_method',
            'doctor_register',
            'designation',
            'email',
            'phone',
            'password',
            'department',
            'location',
            'existing_account_login_here',
            'create_withdraw',
            'current_balance',
            'total_earning',
            'total_withdraw',
            'my_withdraw',
            'select',
            'send_request',
            'withdraw_limit',
            'new_withdraw',
            'method',
            'withdraw_payment',
            'pending_withdraw',
            'login_as_doctor',
            'register_as_a_doctor',
            'app_version',
          ],

          'default_lang' => [
            'Doctor Withdraw',
            'Doctor',
            'Withdraw Method',
            'Charge',
            'Total Amount',
            'Withdraw Amount',
            'Success',
            'Pending',
            'Show Withdraw',
            'Withdraw Charge',
            'Withdraw Charge Amount',
            'Status',
            'Requested Date',
            'Approved Date',
            'Account Information',
            'Approve withdraw',
            'Delete withdraw request',
            'Withdraw Approved Confirmation',
            'Are you sure approved this withdraw request ?',
            'Close',
            'Yes, Approve',
            'Create Method',
            'Create Withdraw Method',
            'Name',
            'Minimum Amount',
            'Maximum Amount',
            'Edit Method',
            'Edit Withdraw Method',
            'Doctor Register',
            'Designation',
            'Email',
            'Phone',
            'Password',
            'Department',
            'Location',
            'Existing Account ? Login here',
            'Create Withdraw',
            'Current Balance',
            'Total Earning',
            'Total Withdraw',
            'My Withdraw',
            'Select',
            'Send Request',
            'Withdraw Limit',
            'New Withdraw',
            'Method',
            'Withdraw Payment',
            'Pending Withdraw',
            'Login as a doctor',
            'Register as a doctor',
            'Version',
          ],

          'custom_lang' => [
            'Doctor Withdraw',
            'Doctor',
            'Withdraw Method',
            'Charge',
            'Total Amount',
            'Withdraw Amount',
            'Success',
            'Pending',
            'Show Withdraw',
            'Withdraw Charge',
            'Withdraw Charge Amount',
            'Status',
            'Requested Date',
            'Approved Date',
            'Account Information',
            'Approve withdraw',
            'Delete withdraw request',
            'Withdraw Approved Confirmation',
            'Are you sure approved this withdraw request ?',
            'Close',
            'Yes, Approve',
            'Create Method',
            'Create Withdraw Method',
            'Name',
            'Minimum Amount',
            'Maximum Amount',
            'Edit Method',
            'Edit Withdraw Method',
            'Doctor Register',
            'Designation',
            'Email',
            'Phone',
            'Password',
            'Department',
            'Location',
            'Existing Account ? Login here',
            'Create Withdraw',
            'Current Balance',
            'Total Earning',
            'Total Withdraw',
            'My Withdraw',
            'Select',
            'Send Request',
            'Withdraw Limit',
            'New Withdraw',
            'Method',
            'Withdraw Payment',
            'Pending Withdraw',
            'Login as a doctor',
            'Register as a doctor',
            'Version',
          ],

        ];

        foreach ($texts['lang_key'] as $key => $value) {
            $manage_text = new ManageText();
            $manage_text->lang_key = $texts['lang_key'][$key];
            $manage_text->default_lang = $texts['default_lang'][$key];
            $manage_text->custom_lang = $texts['custom_lang'][$key];
            $manage_text->save();
        }
  }

  public function manageNotification(){
    $texts = [
        'lang_key' => [
            'withdraw_request_approval',
            'name_is_required',
            'name_already_exists',
            'minimum_amount_required',
            'maximum_amount_required',
            'withdraw_charge_required',
            'please_provide_valid_charge',
            'description_required',
            'withdraw_method_required',
            'withdraw_amount_required',
            'please_provide_valid_amount',
            'account_information_required',
            'sorry_Your_Payment_request',
            'withdraw_request_send_successfully',
            'range_not_available',
            'doctor_fillup_profile',
            'please_provide_valid_fee',
        ],

        'default_lang' => [
            'Withdraw request approval successfully',
            'Name is required',
            'Name already exists',
            'Minimum amount is required',
            'Maximum amount is required',
            'Withdraw charge is required',
            'Please provide valid charge',
            'Description is required',
            'Withdraw method is required',
            'Withdraw amount is required',
            'Please provide valid amount',
            'Account information is required',
            'Sorry! Your Payment request is more then your current balance',
            'Withdraw request send successfully, please wait for admin approval',
            'Your amount range is not available',
            'Please fill up your profile information before payment withdraw',
            'Please provide valid fee',
        ],

        'custom_lang' => [
            'Withdraw request approval successfully',
            'Name is required',
            'Name already exists',
            'Minimum amount is required',
            'Maximum amount is required',
            'Withdraw charge is required',
            'Please provide valid charge',
            'Description is required',
            'Withdraw method is required',
            'Withdraw amount is required',
            'Please provide valid amount',
            'Account information is required',
            'Sorry! Your Payment request is more then your current balance',
            'Withdraw request send successfully, please wait for admin approval',
            'Your amount range is not available',
            'Please fill up your profile information before payment withdraw',
            'Please provide valid fee',
        ],

      ];

      foreach ($texts['lang_key'] as $key => $value) {
        $manage_text = new NotificationText();
        $manage_text->lang_key = $texts['lang_key'][$key];
        $manage_text->default_lang = $texts['default_lang'][$key];
        $manage_text->custom_lang = $texts['custom_lang'][$key];
        $manage_text->save();
      }
  }

  public function manageValidationText(){
    $texts = [
        'lang_key' => [
            'please_provide_valid_fee',
        ],

        'default_lang' => [
            'Please provide valid fee',
        ],

        'custom_lang' => [
            'Please provide valid fee',
        ],

      ];

      foreach ($texts['lang_key'] as $key => $value) {
        $validationText = new ValidationText();
        $validationText->lang_key = $texts['lang_key'][$key];
        $validationText->default_lang = $texts['default_lang'][$key];
        $validationText->custom_lang = $texts['custom_lang'][$key];
        $validationText->save();
      }
  }

  public function doctorVerificationEmail(){
    $doctor_verification = new EmailTemplate();
    $doctor_verification->name = 'Doctor verification';
    $doctor_verification->subject = 'Doctor verification';
    $doctor_verification->description = '<h4>Dear <b>{{user_name}}</b>,</h4>
    <p>Congratulations! Your Account has been created successfully. Please Click the following link and Active your Account.</p>';
    $doctor_verification->save();
  }

  public function doctorWithdrawEmail(){
    $doctor_withdraw = new EmailTemplate();
    $doctor_withdraw->name = 'Doctor Withdraw';
    $doctor_withdraw->subject = 'Doctor Withdraw Approval';
    $doctor_withdraw->description = '<p>Hi <strong>{{doctor_name}}</strong>,</p>
    <p>Your withdraw Request Approval successfully. Please check your account.</p>
    <p>Withdraw method : <strong>{{withdraw_method}}</strong>,</p>
    <p>Total Amount :<strong> {{total_amount}}</strong>,</p>
    <p>Withdraw charge : <strong>{{withdraw_charge}}</strong>,</p>
    <p>Withdraw&nbsp; Amount : <strong>{{withdraw_amount}}</strong>,</p>
    <p>Approval Date :<strong> {{approval_date}}</strong></p>';
    $doctor_withdraw->save();
  }

  public function emailVerified(){
    $doctors = Doctor::get();
    foreach($doctors as $doctor){
      $doctor->email_verified = 1;
      $doctor->save();
    }
  }
}
