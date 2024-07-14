@extends('layouts.doctor.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','create_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','create_withdraw')->first()->default_lang }}</title>
@endsection
@section('doctor-content')
    <div class="row">
        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-4 col-md-6 mb-4">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                            {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','current_balance')->first()->custom_lang : $websiteLang->where('lang_key','current_balance')->first()->default_lang }}
                        </div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $setting->currency_icon }}{{ $current_balance }}</div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-4 col-md-6 mb-4">
        <div class="card border-left-success shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                            {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','total_earning')->first()->custom_lang : $websiteLang->where('lang_key','total_earning')->first()->default_lang }}</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $setting->currency_icon }}{{ $total_earning }}</div>
                    </div>

                    <div class="col-auto">
                        <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-4 col-md-6 mb-4">
        <div class="card border-left-success shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                            {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','total_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','total_withdraw')->first()->default_lang }}</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $setting->currency_icon }}{{ $total_withdraw }}</div>
                    </div>

                    <div class="col-auto">
                        <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </div>
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('doctor.withdraw.index') }}" class="btn btn-primary"><i class="fas fa-list" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','my_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','my_withdraw')->first()->default_lang }} </a></h1>
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','create_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','create_withdraw')->first()->default_lang }}</h6>
                </div>
                <div class="card-body">
                    <form action="{{ route('doctor.withdraw.store') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_method')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_method')->first()->default_lang }}</label>
                            <select name="withdraw_method" id="withdraw_method" class="form-control select2">
                                    <option value="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','select')->first()->custom_lang : $websiteLang->where('lang_key','select')->first()->default_lang }}</option>
                                @foreach ($methods as $method)
                                    <option value="{{ $method->id }}">{{ ucFirst($method->name) }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_amount')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_amount')->first()->default_lang }}</label>
                            <input type="text" class="form-control" name="withdraw_amount" value="{{ old('withdraw_amount') }}">
                        </div>


                        <div class="form-group">
                            <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','account_information')->first()->custom_lang : $websiteLang->where('lang_key','account_information')->first()->default_lang }}</label>
                            <textarea name="account_info" id="account_info" cols="30" rows="5" class="form-control"></textarea>
                        </div>

                        <button class="btn btn-primary" type="submit"> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','send_request')->first()->custom_lang : $websiteLang->where('lang_key','send_request')->first()->default_lang }}</button>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-md-6 d-none" id="method_des_box">
            <div class="card shadow mb-4">
                <div class="card-body" id="method_des">

                </div>
            </div>
        </div>
    </div>

    <script>
        (function($) {
        "use strict";
        $(document).ready(function () {
            $("#withdraw_method").on('change', function(){
                var methodId = $(this).val();
                $.ajax({
                    type:"get",
                    url:"{{url('/doctor/get-withdraw-account-info/')}}"+"/"+methodId,
                    success:function(response){
                       $("#method_des").html(response)
                       $("#method_des_box").removeClass('d-none')
                    },
                    error:function(err){}
                })

                if(!methodId){
                    $("#method_des_box").addClass('d-none')
                }

            })
        });

        })(jQuery);
    </script>

@endsection
