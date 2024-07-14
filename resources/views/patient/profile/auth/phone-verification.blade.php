@extends('layouts.patient.layout')
@section('title')
    {{--<title>{{ $navigation->register }}</title>--}}
    <title>Phone Verification</title>
@endsection
@section('patient-content')


    <!--Banner Start-->
    <div class="banner-area flex" style="background-image:url({{ $banner->login ? url($banner->login) : '' }});">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="banner-text">
                        {{--<h1>{{ $navigation->register }}</h1>--}}
                        <h1>Phone Verification</h1>
                        <ul>
                            <li><a href="{{ url('/') }}">{{ $navigation->home }}</a></li>
                            {{--<li><span>{{ $navigation->register }}</span></li>--}}
                            <li><span>Phone Verification</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Banner End-->

    <!--Register Start-->
    <div class="register-area pt_70 pb_70">
        <div class="container wow fadeIn">
            <div class="row">
                @if ($setting->text_direction=='RTL')
                    <div class="col-lg-3"></div>
                @endif
                <div class="offset-lg-3 col-lg-6 offset-lg-3">
                    <div class="regiser-form login-form">
                        <form action="{{ route('user.verify-phone') }}" method="POST">
                            @csrf
                            <div class="form-row row">
                                <div class="form-group col-12">
                                    <label for="otpCode">Phone Verification Code</label>
                                    <input type="number" name="otpCode" id="otpCode" class="form-control" value="{{ old('otpCode') }}">
                                </div>

                                @if ($setting->allow_captcha==1)
                                    <div class="form-group col-12">
                                        <div class="g-recaptcha" data-sitekey="{{ $setting->captcha_key }}"></div>
                                    </div>
                                @endif
                                <div class="form-group col-12">
                                    <button type="submit" class="btn btn-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','submit')->first()->custom_lang : $websiteLang->where('lang_key','submit')->first()->default_lang }}</button>
                                </div>
                            </div>
                        </form>

                        <a href="{{ url('login') }}" class="link">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','exist_login')->first()->custom_lang : $websiteLang->where('lang_key','exist_login')->first()->default_lang }}</a><br>
                        <a href="{{ route('doctor.register.page') }}" class="link">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','register_as_a_doctor')->first()->custom_lang : $websiteLang->where('lang_key','register_as_a_doctor')->first()->default_lang }}</a>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Register End-->

@endsection
