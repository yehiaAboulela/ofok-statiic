@extends('layouts.patient.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','app_list')->first()->custom_lang : $websiteLang->where('lang_key','app_list')->first()->default_lang }}</title>
@endsection
@section('patient-content')


<!--Banner Start-->
<div class="banner-area flex" style="background-image:url({{ $banner->profile ? url($banner->profile) : '' }});">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="banner-text">
                    <h1>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','app_list')->first()->custom_lang : $websiteLang->where('lang_key','app_list')->first()->default_lang }}</h1>
                    <ul>
                        <li><a href="{{ url('/') }}">{{ $navigation->home }}</a></li>
                        <li><span>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','app_list')->first()->custom_lang : $websiteLang->where('lang_key','app_list')->first()->default_lang }}</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Banner End-->

<!--Dashboard Start-->
<div class="dashboard-area pt_70 pb_70">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                @include('patient.profile.sidebar')
            </div>
            <div class="col-lg-9">
                <div class="detail-dashboard">
                <h2 class="d-headline">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','app_list')->first()->custom_lang : $websiteLang->where('lang_key','app_list')->first()->default_lang }}</h2>
                <div class="table-responsive">
                <table class="coustom-dashboard dashboard-table display" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th  width="3%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','serial')->first()->custom_lang : $websiteLang->where('lang_key','serial')->first()->default_lang }}</th>
                                <th  width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','doctor')->first()->custom_lang : $websiteLang->where('lang_key','doctor')->first()->default_lang }}</th>
                                <th  width="20%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','date')->first()->custom_lang : $websiteLang->where('lang_key','date')->first()->default_lang }}</th>
                                <th  width="10%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','fee')->first()->custom_lang : $websiteLang->where('lang_key','fee')->first()->default_lang }}</th>
                                <th  width="30%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','schedule')->first()->custom_lang : $websiteLang->where('lang_key','schedule')->first()->default_lang }}</th>
                                <th  width="10%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','payment')->first()->custom_lang : $websiteLang->where('lang_key','payment')->first()->default_lang }}</th>
                                <th  width="7%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','treated')->first()->custom_lang : $websiteLang->where('lang_key','treated')->first()->default_lang }}</th>
                                <th  width="5%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','action')->first()->custom_lang : $websiteLang->where('lang_key','action')->first()->default_lang }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($appointments as $index => $appointment)
                            <tr>
                                <td>{{ ++$index }}</td>
                                <td>{{ ucfirst($appointment->doctor->name) }}</td>
                                <td>{{ date('m-d-Y',strtotime($appointment->date)) }}</td>
                                <td>{{ $currency->currency_icon }}{{ $appointment->appointment_fee }}</td>
                                <td>{{ strtoupper($appointment->schedule->start_time).'-'.strtoupper($appointment->schedule->end_time) }}</td>
                                <td>
                                    @if ($appointment->payment_status==0)
                                        <span class="badge badge-danger">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','pending')->first()->custom_lang : $websiteLang->where('lang_key','pending')->first()->default_lang }}</span>
                                    @else
                                    <span class="badge badge-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','success')->first()->custom_lang : $websiteLang->where('lang_key','success')->first()->default_lang }}</span>
                                    @endif
                                </td>
                                <td>
                                    @if ($appointment->already_treated==0)
                                        <span class="badge badge-danger">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','no')->first()->custom_lang : $websiteLang->where('lang_key','no')->first()->default_lang }}</span>
                                    @else
                                    <span class="badge badge-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','yes')->first()->custom_lang : $websiteLang->where('lang_key','yes')->first()->default_lang }}</span>
                                    @endif
                                </td>

                                <td>
                                    @if ($appointment->already_treated==1)
                                    <a class="db-bt-ed" href="{{ route('patient.shwo.appointment',$appointment->id) }}" ><i class="fas fa-eye    "></i></a>
                                    @endif
                                </td>
                            </tr>
                            @endforeach

                        </tbody>
                    </table>

                    {{ $appointments->links() }}
                </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Dashboard End-->
@endsection
