@extends('layouts.doctor.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','show_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','show_withdraw')->first()->default_lang }}</title>
@endsection
@section('doctor-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('doctor.withdraw.index') }}" class="btn btn-primary"><i class="fas fa-list" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','my_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','my_withdraw')->first()->default_lang }} </a></h1>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','my_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','my_withdraw')->first()->default_lang }}</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <tr>
                        <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_method')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_method')->first()->default_lang }}</td>
                        <td width="50%">{{ $withdraw->method->name }}</td>
                    </tr>

                    <tr>
                        <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_charge')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_charge')->first()->default_lang }}</td>
                        <td width="50%">{{ $withdraw->withdraw_charge }}%</td>
                    </tr>

                    <tr>
                        <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_charge_amount')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_charge_amount')->first()->default_lang }}</td>
                        <td width="50%">{{ $setting->currency_icon }}{{ $withdraw->total_amount - $withdraw->withdraw_amount }}</td>
                    </tr>

                    <tr>
                        <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','total_amount')->first()->custom_lang : $websiteLang->where('lang_key','total_amount')->first()->default_lang }}</td>
                        <td width="50%">{{ $setting->currency_icon }}{{ $withdraw->total_amount }}</td>
                    </tr>
                    <tr>
                        <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_amount')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_amount')->first()->default_lang }}</td>
                        <td width="50%">{{ $setting->currency_icon }}{{ $withdraw->withdraw_amount }}</td>
                    </tr>
                    <tr>
                        <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</td>
                        <td width="50%">
                            @if ($withdraw->status==1)
                            <span class="badge badge-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','success')->first()->custom_lang : $websiteLang->where('lang_key','success')->first()->default_lang }}</span>
                            @else
                            <span class="badge badge-danger">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','pending')->first()->custom_lang : $websiteLang->where('lang_key','pending')->first()->default_lang }}</span>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','requested_date')->first()->custom_lang : $websiteLang->where('lang_key','requested_date')->first()->default_lang }}</td>
                        <td width="50%">{{ $withdraw->created_at->format('Y-m-d') }}</td>
                    </tr>
                    @if ($withdraw->status==1)
                        <tr>
                            <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','approved_date')->first()->custom_lang : $websiteLang->where('lang_key','approved_date')->first()->default_lang }}</td>
                            <td width="50%">{{ $withdraw->approved_date }}</td>
                        </tr>
                    @endif

                    <tr>
                        <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','account_information')->first()->custom_lang : $websiteLang->where('lang_key','account_information')->first()->default_lang }}</td>
                        <td width="50%">
                            {!! clean(nl2br($withdraw->account_info)) !!}
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
@endsection
