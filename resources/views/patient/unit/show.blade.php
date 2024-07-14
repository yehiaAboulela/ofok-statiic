@extends('layouts.patient.layout')
@section('title')
<title>{{ $unit->seo_title }}</title>
@endsection
@section('meta')
<meta name="description" content="{{ $unit->seo_description }}">
@endsection
@section('patient-content')

<!--Banner Start-->
<div class="banner-area flex" style="background-image:url({{ $banner->department ? url($banner->department) : '' }});">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="banner-text">
                    <h1>{{ $unit->name }}</h1>
                    <ul>
                        <li><a href="{{ url('/') }}">{{ $navigation->home }}</a></li>
                        <li><span>{{ $unit->name }}</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Banner End-->



<div class="service-detail-area pt_40">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="service-detail-text pt_30">

                    <div class="row mb_30">
                        <div class="col-md-12">
                            <!-- Swiper -->
                            <div class="swiper-container pro-detail-top">
                                <div class="swiper-wrapper">
                                    @foreach ($unit->images as $item)
                                    <div class="swiper-slide">
                                        <div class="catagory-item">
                                            <div class="catagory-img-holder">
                                                <img src="{{ url($item->large_image) }}" alt="">
                                                <div class="catagory-text">
                                                    <div class="catagory-text-table">
                                                        <div class="catagory-text-cell">
                                                            <ul class="catagory-hover">
                                                                <li><a href="{{ url($item->large_image) }}" class="magnific"><i class="fas fa-search"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach


                                </div>
                                <!-- Add Arrows -->
                                <div class="swiper-button-next swiper-button-white"></div>
                                <div class="swiper-button-prev swiper-button-white"></div>
                            </div>
                            <div class="swiper-container pro-detail-thumbs">
                                <div class="swiper-wrapper">
                                    @foreach ($unit->images as $item)
                                    <div class="swiper-slide"><img src="{{ url($item->small_image) }}" alt=""></div>
                                    @endforeach

                                </div>
                            </div>
                        </div>
                    </div>
                    {!! clean($unit->description) !!}
                </div>
              

               
            </div>
            <div class="col-md-4">
                <div class="service-sidebar pt_30">
                    <div class="service-widget">
                        <ul>
                            @foreach ($units as $item)
                            <li class="{{ $item->id==$unit->id ? 'active':'' }}"><a href="{{ url('unit-details/'.$item->slug) }}"><i class="fas fa-chevron-right"></i> {{ $item->name }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="service-widget-contact mt_45">
                        <h2>{{ $contactInfo->header }}</h2>
                        <p>{{ $contactInfo->description }}</p>
                        <ul>
                            <li><i class="fas fa-phone"></i> {!! nl2br(e($contactInfo->phones)) !!}</li>
                            <li><i class="far fa-envelope"></i> {!! nl2br(e($contactInfo->emails)) !!}</li>
                            <li><i class="fas fa-map-marker-alt"></i>{!! nl2br(e($contactInfo->address)) !!}</li>
                        </ul>
                    </div>
                    <div class="service-qucikcontact event-form mt_30">
                        <h3>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','quick_contact')->first()->custom_lang : $websiteLang->where('lang_key','quick_contact')->first()->default_lang }}</h3>
                        <form action="{{ url('contact-message') }}" method="POST">
                            @csrf
                            <div class="form-row row">
                                <div class="form-group col-md-12">
                                    <input type="text" class="form-control" id="name" placeholder="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }}" name="name">
                                </div>
                                <div class="form-group col-md-12">
                                    <input type="text" class="form-control" placeholder="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','phone')->first()->custom_lang : $websiteLang->where('lang_key','phone')->first()->default_lang }}" name="phone">
                                </div>
                                <div class="form-group col-md-12">
                                    <input type="email" class="form-control" placeholder="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','email')->first()->custom_lang : $websiteLang->where('lang_key','email')->first()->default_lang }}" name="email">
                                </div>
                                <div class="form-group col-md-12">
                                    <input type="text" class="form-control" placeholder="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','subject')->first()->custom_lang : $websiteLang->where('lang_key','subject')->first()->default_lang }}" name="subject">
                                </div>

                                <div class="form-group col-md-12">
                                    <textarea name="message" class="form-control" placeholder="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','msg')->first()->custom_lang : $websiteLang->where('lang_key','msg')->first()->default_lang }}"></textarea>
                                </div>
                                @if ($setting->allow_captcha==1)
                                <div class="form-group col-12">
                                    <div class="g-recaptcha" data-sitekey="{{ $setting->captcha_key }}"></div>
                                </div>
                                @endif

                                <div class="form-group col-md-12">
                                    <button type="submit" class="btn">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','send_msg')->first()->custom_lang : $websiteLang->where('lang_key','send_msg')->first()->default_lang }}</button>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>







@endsection
