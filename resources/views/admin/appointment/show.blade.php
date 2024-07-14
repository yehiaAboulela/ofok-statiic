@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','app')->first()->custom_lang : $websiteLang->where('lang_key','app')->first()->default_lang }}</title>
@endsection
@section('admin-content')
 <!-- Appointment Details -->
 <div class="row">
    <div class="col-md-6">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','patient_info')->first()->custom_lang : $websiteLang->where('lang_key','patient_info')->first()->default_lang }}</h6>
            </div>
            <div class="card-body">
                <table class="table table-bordered">
                    <tr>
                        <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }}</td>
                        <td>{{ ucwords($appointment->user->name) }}</td>
                    </tr>
                    <tr>
                        <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','email')->first()->custom_lang : $websiteLang->where('lang_key','email')->first()->default_lang }}</td>
                        <td>{{ $appointment->user->email }}</td>
                    </tr>
                    <tr>
                        <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','age')->first()->custom_lang : $websiteLang->where('lang_key','age')->first()->default_lang }}</td>
                        <td>{{ $appointment->user->age }}</td>
                    </tr>
                    <tr>
                        <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','gender')->first()->custom_lang : $websiteLang->where('lang_key','gender')->first()->default_lang }}</td>
                        <td>{{ $appointment->user->gender }}</td>
                    </tr>
                    @if ($appointment->user->disabilities)
                    <tr>
                        <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','disabilities')->first()->custom_lang : $websiteLang->where('lang_key','disabilities')->first()->default_lang }}</td>
                        <td>{{ $appointment->user->disabilities }}</td>
                    </tr>
                    @endif


                </table>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','app_info')->first()->custom_lang : $websiteLang->where('lang_key','app_info')->first()->default_lang }}</h6>
            </div>
            <div class="card-body">
                <table class="table table-bordered">
                    <tr>
                        <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','doc_name')->first()->custom_lang : $websiteLang->where('lang_key','doc_name')->first()->default_lang }}</td>
                        <td>{{ ucwords($appointment->doctor->name) }}({{ $appointment->doctor->designations }})</td>
                    </tr>
                    <tr>
                        <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','date')->first()->custom_lang : $websiteLang->where('lang_key','date')->first()->default_lang }}</td>
                        <td>{{ date('m-d-Y',strtotime($appointment->date)) }}</td>
                    </tr>

                    <tr>
                        <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','schedule')->first()->custom_lang : $websiteLang->where('lang_key','schedule')->first()->default_lang }}</td>
                        <td>{{ $appointment->schedule->start_time.'-'.$appointment->schedule->end_time }}</td>
                    </tr>

                    <tr>
                        <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','already_treated')->first()->custom_lang : $websiteLang->where('lang_key','already_treated')->first()->default_lang }}</td>
                        <td>
                            @if ($appointment->already_treated==1)
                                <span class="badge badge-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','yes')->first()->custom_lang : $websiteLang->where('lang_key','yes')->first()->default_lang }}</span>
                            @else
                                <span class="badge badge-danger">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','no')->first()->custom_lang : $websiteLang->where('lang_key','no')->first()->default_lang }}</span>
                            @endif
                        </td>
                    </tr>


                </table>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','billing_info')->first()->custom_lang : $websiteLang->where('lang_key','billing_info')->first()->default_lang }}</h6>
            </div>
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','order_id')->first()->custom_lang : $websiteLang->where('lang_key','order_id')->first()->default_lang }}</th>
                        <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','fee')->first()->custom_lang : $websiteLang->where('lang_key','fee')->first()->default_lang }}</th>
                        <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','payment_status')->first()->custom_lang : $websiteLang->where('lang_key','payment_status')->first()->default_lang }}</th>
                        <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','payment_method')->first()->custom_lang : $websiteLang->where('lang_key','payment_method')->first()->default_lang }}</th>
                        <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','tran_id')->first()->custom_lang : $websiteLang->where('lang_key','tran_id')->first()->default_lang }}</th>
                        <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','des')->first()->custom_lang : $websiteLang->where('lang_key','des')->first()->default_lang }}</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>{{ $appointment->order->order_id }}</td>
                            <td>{{ $currency->currency_icon }}{{ $appointment->appointment_fee }}</td>
                            <td>
                                @if ($appointment->payment_status==1)
                                    <span class="badge badge-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</span>
                                @else
                                <span class="badge badge-danger">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','pending')->first()->custom_lang : $websiteLang->where('lang_key','pending')->first()->default_lang }}</span>
                                @endif
                            </td>
                            <td>{{ $appointment->payment_method }}</td>
                            <td>{{ $appointment->payment_transaction_id }}</td>
                            <td>{!! clean(nl2br(e($appointment->payment_description))) !!}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>

@endsection

