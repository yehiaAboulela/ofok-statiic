@extends('layouts.patient.layout')
@section('title')
<title>{{ $title_meta->contactus_title }}</title>
@endsection
@section('meta')
<meta name="description" content="{{ $title_meta->contactus_meta_description }}">
@endsection
@section('patient-content')

<!--Banner Start-->
<div class="banner-area flex" style="background-image:url({{ $banner->contact ? url($banner->contact) : '' }});">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="banner-text">
                    <h1>{{ $navigation->contact_us }}</h1>
                    <ul>
                        <li><a href="{{ url('/') }}">{{ $navigation->home }}</a></li>
                        <li><span>{{ $navigation->contact_us }}</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Banner End-->

<!--Form Start-->
<div class="contauct-style1  pt_50 pb_65">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <div class="about1-text mt_30">
                    <h1>{{ $contactUs->header }}</h1>
                    <p class="mb_30">
                        {{ $contactUs->description }}
                    </p>
                </div>
                <form action="{{ url('contact-message') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row contact-form">
                        <div class="col-lg-4 form-group">
                            <label>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }} *</label>
                            <input type="text" class="form-control" id="name"  name="name">
                        </div>
                        <div class="col-lg-4 form-group">
                            <label>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','email')->first()->custom_lang : $websiteLang->where('lang_key','email')->first()->default_lang }} *</label>
                            <input type="email" id="email" class="form-control"  name="email">
                        </div>
                        <div class="col-lg-4 form-group">
                            <label>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','phone')->first()->custom_lang : $websiteLang->where('lang_key','phone')->first()->default_lang }}</label>
                            <input type="text" id="phone" name="phone" class="form-control">
                        </div>
                        <!-- <div class="col-lg-6 form-group">
                            <label>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','subject')->first()->custom_lang : $websiteLang->where('lang_key','subject')->first()->default_lang }} *</label>
                            <input type="text" id="subject" class="form-control" name="subject">
                        </div> -->
                        <div class="col-lg-12 form-group">
                            <label>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','msg')->first()->custom_lang : $websiteLang->where('lang_key','msg')->first()->default_lang }} *</label>
                            <textarea name="message" class="form-control" id="massege"></textarea>
                        </div>
                        @if ($setting->allow_captcha==1)
                        <div class="form-group col-12">
                            <div class="g-recaptcha" data-sitekey="{{ $setting->captcha_key }}"></div>
                        </div>
                        @endif

                        <div class="col-lg-12 form-group">
                            <label>Record Message</label>
                            <input type="file" id="audioFile" name="audioFile" accept="audio/*" style="display: none;">
                            <div class="FormRecordGroup">
                                <button class="recordButton" type="button" id="recordButton"><span style="display: none;">Record</span><i class="fas fa-microphone"></i></button>
                                <button class="stopButton" type="button" id="stopButton" style="display: none;"><span style="display: none;">Stop</span><i class="fas fa-times"></i></button><br><br>
                                <button class="deleteButton" type="button" id="deleteButton" style="display: none;"><span style="display: none;">Delete</span><i class="fas fa-trash-alt"></i></button><br><br>
                                <audio class="audioPlayback" id="audioPlayback" controls style="display: none;"></audio><br><br>
                            </div>
                        </div>
                        <div class="col-md-12 form-group">
                            <button type="submit" class="btn">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','submit')->first()->custom_lang : $websiteLang->where('lang_key','submit')->first()->default_lang }}</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-5">
                <div class="contact-info-item bg1 mb_30 mt_30">
                    <div class="contact-info">
                        <span>
                            <i class="fas fa-phone"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','phone')->first()->custom_lang : $websiteLang->where('lang_key','phone')->first()->default_lang }}:
                        </span>
                        <div class="contact-text">
                            <a href="tel:(+29) 111 2222 300">
                                 {!! clean(nl2br($contactUs->phones)) !!}</a>
                            <br>
                        </div>
                    </div>
                </div>
                <div class="contact-info-item bg2 mb_30">
                    <div class="contact-info">
                        <span>
                            <i class="far fa-envelope"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','email_address')->first()->custom_lang : $websiteLang->where('lang_key','email_address')->first()->default_lang }}:
                        </span>
                        <div class="contact-text">
                            <a href="mailto:info@yourbestdomain.com">{!! nl2br(e($contactUs->emails)) !!}</a>

                        </div>
                    </div>
                </div>
                <div class="contact-info-item bg3 mb_30">
                    <div class="contact-info">
                        <span>
                            <i class="fas fa-map-marker-alt"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','address')->first()->custom_lang : $websiteLang->where('lang_key','address')->first()->default_lang }}:
                        </span>
                        <div class="contact-text">
                        <a href="https://maps.app.goo.gl/1chRvxhcddxCtwx7A" target="_blank"><p>
                                {!! clean(nl2br($contactUs->address)) !!}
                            </p></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Form End-->

<!--Google map start-->
<div class="map-area">
    {!! clean($contactUs->map_embed_code) !!}
</div>
<!--Google map end-->



@endsection




