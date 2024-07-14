@extends('layouts.doctor.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','my_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','my_withdraw')->first()->default_lang }}</title>
@endsection
@section('doctor-content')
<style>
    .newsearch button{
        margin-top: 30px;
    }
</style>
    <!-- DataTales Example -->
    <div id="payment-history">
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
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('doctor.withdraw.create') }}" class="btn btn-primary"><i class="fas fa-plus" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','new_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','new_withdraw')->first()->default_lang }} </a></h1>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','my_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','my_withdraw')->first()->default_lang }}</h6>
        </div>
        <div class="card-body" id="search-particular-appointment">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th width="5%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','serial')->first()->custom_lang : $websiteLang->where('lang_key','serial')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','method')->first()->custom_lang : $websiteLang->where('lang_key','method')->first()->default_lang }}</th>
                            <th width="10%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','charge')->first()->custom_lang : $websiteLang->where('lang_key','charge')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','total_amount')->first()->custom_lang : $websiteLang->where('lang_key','total_amount')->first()->default_lang }}</th>
                            <th width="20%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_amount')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_amount')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</th>
                            <th width="20%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','action')->first()->custom_lang : $websiteLang->where('lang_key','action')->first()->default_lang }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($withdraws as $index => $withdraw)
                        <tr>
                            <td>{{ ++$index }}</td>
                            <td>{{ $withdraw->method->name }}</td>
                            <td>{{ $setting->currency_icon }}{{ $withdraw->total_amount - $withdraw->withdraw_amount }}</td>
                            <td>{{ $setting->currency_icon }}{{ $withdraw->total_amount }}</td>
                            <td>{{ $setting->currency_icon }}{{ $withdraw->withdraw_amount }}</td>
                            <td>
                                @if ($withdraw->status==1)
                                <span class="badge badge-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','success')->first()->custom_lang : $websiteLang->where('lang_key','success')->first()->default_lang }}</span>
                                @else
                                <span class="badge badge-danger">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','pending')->first()->custom_lang : $websiteLang->where('lang_key','pending')->first()->default_lang }}</span>
                                @endif
                            </td>
                            <td>
                                <a href="{{ route('doctor.withdraw.show',$withdraw->id) }}" class="btn btn-primary btn-sm"><i class="fa fa-eye" aria-hidden="true"></i></a>
                            </td>

                        </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>

@endsection
