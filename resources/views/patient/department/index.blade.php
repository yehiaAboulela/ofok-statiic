@extends('layouts.patient.layout')
@section('title')
    <title>{{ $title_meta->department_title }}</title>
@endsection
@section('meta')
    <meta name="description" content="{{ $title_meta->department_meta_description }}">
@endsection
@section('patient-content')
    <!--Banner Start-->
    <div class="banner-area flex" style="background-image:url({{ $banner->department ? url($banner->department) : '' }});">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="banner-text">
                        <h1>{{ $navigation->department }}</h1>
                        <ul>
                            <li><a href="{{ url('/') }}">{{ $navigation->home }}</a></li>
                            <li><span>{{ $navigation->department }}</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Banner End-->

    <div class="case-study-home-page case-study-area pt_50">
        <div class="container">
            <div class="row">
                {{-- @foreach ($departments as $department)
                    <div class="col-lg-4 col-md-6 mt_15">
                        <div class="case-item">
                            <div class="case-box">
                                <div class="case-image">
                                    <img src="{{ $department->thumbnail_image }}" alt="">
                                    <div class="overlay"><a href="{{ url('department-details/' . $department->slug) }}"
                                            class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                    </div>
                                </div>
                                <div class="case-content">
                                    <h4><a
                                            href="{{ url('department-details/' . $department->slug) }}">{{ $department->name }}</a>
                                    </h4>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach --}}

                <div class="col-lg-4 col-md-6 mt_15">
                    <div class="case-item">
                        <div class="case-box">
                            <div class="case-image">
                                <img src="{{ asset('/uploads/clinks/1.png') }}" alt="">
                                <div class="overlay"><a href="{{ url('department-details/pediatric-clinic') }}"
                                        class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                </div>
                            </div>
                            <div class="case-content">
                                <h4><a href="{{ url('department-details/pediatric-clinic') }}">Pediatric Clinic</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt_15">
                    <div class="case-item">
                        <div class="case-box">
                            <div class="case-image">
                                <img src="{{ asset('/uploads/clinks/2.png') }}" alt="">
                                <div class="overlay"><a href="{{ url('department-details/clinical-nutrition-clinic') }}"
                                        class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                </div>
                            </div>
                            <div class="case-content">
                                <h4><a href="{{ url('department-details/clinical-nutrition-clinic') }}">Clinical Nutrition
                                        Clinic</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt_15">
                    <div class="case-item">
                        <div class="case-box">
                            <div class="case-image">
                                <img src="{{ asset('/uploads/clinks/3.png') }}" alt="">
                                <div class="overlay"><a href="{{ url('department-details/general-surgery-clinic') }}"
                                        class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                </div>
                            </div>
                            <div class="case-content">
                                <h4><a href="{{ url('department-details/general-surgery-clinic') }}">General Surgery
                                        Clinic</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt_15">
                    <div class="case-item">
                        <div class="case-box">
                            <div class="case-image">
                                <img src="{{ asset('/uploads/clinks/4.png') }}" alt="">
                                <div class="overlay"><a href="{{ url('department-details/rheumatoid-clinic') }}"
                                        class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                </div>
                            </div>
                            <div class="case-content">
                                <h4><a href="{{ url('department-details/rheumatoid-clinic') }}">Rheumatoid
                                        Clinic</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt_15">
                    <div class="case-item">
                        <div class="case-box">
                            <div class="case-image">
                                <img src="{{ asset('/uploads/clinks/5.png') }}" alt="">
                                <div class="overlay"><a href="{{ url('department-details/orthopedic-clinic') }}"
                                        class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                </div>
                            </div>
                            <div class="case-content">
                                <h4><a href="{{ url('department-details/orthopedic-clinic') }}">Orthopedic Clinic</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt_15">
                    <div class="case-item">
                        <div class="case-box">
                            <div class="case-image">
                                <img src="{{ asset('/uploads/clinks/6.png') }}" alt="">
                                <div class="overlay"><a href="{{ url('department-details/cardiovascular-clinic') }}"
                                        class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                </div>
                            </div>
                            <div class="case-content">
                                <h4><a href="{{ url('department-details/cardiovascular-clinic') }}">Cardiovascular
                                        Clinic</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt_15">
                    <div class="case-item">
                        <div class="case-box">
                            <div class="case-image">
                                <img src="{{ asset('/uploads/clinks/7.png') }}" alt="">
                                <div class="overlay"><a href="{{ url('department-details/neurology-clinic') }}"
                                        class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                </div>
                            </div>
                            <div class="case-content">
                                <h4><a href="{{ url('department-details/neurology-clinic') }}">Neurology Clinic</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt_15">
                    <div class="case-item">
                        <div class="case-box">
                            <div class="case-image">
                                <img src="{{ asset('/uploads/clinks/8.png') }}" alt="">
                                <div class="overlay"><a href="{{ url('department-details/andrology-clinic') }}"
                                        class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                </div>
                            </div>
                            <div class="case-content">
                                <h4><a href="{{ url('department-details/andrology-clinic') }}">Andrology Clinic</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt_15">
                    <div class="case-item">
                        <div class="case-box">
                            <div class="case-image">
                                <img src="{{ asset('/uploads/clinks/9.png') }}" alt="">
                                <div class="overlay"><a href="{{ url('department-details/plastic-surgery-clinic') }}"
                                        class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                </div>
                            </div>
                            <div class="case-content">
                                <h4><a href="{{ url('department-details/plastic-surgery-clinic') }}">Plastic Surgery
                                        Clinic</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt_15">
                    <div class="case-item">
                        <div class="case-box">
                            <div class="case-image">
                                <img src="{{ asset('/uploads/clinks/10.png') }}" alt="">
                                <div class="overlay"><a href="{{ url('department-details/general-urology-clinc') }}"
                                        class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                </div>
                            </div>
                            <div class="case-content">
                                <h4><a href="{{ url('department-details/general-urology-clinc') }}">General Urology
                                        Clinc</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt_15">
                    <div class="case-item">
                        <div class="case-box">
                            <div class="case-image">
                                <img src="{{ asset('/uploads/clinks/11.png') }}" alt="">
                                <div class="overlay"><a href="{{ url('department-details/pediatric-urology-clinic') }}"
                                        class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                </div>
                            </div>
                            <div class="case-content">
                                <h4><a href="{{ url('department-details/pediatric-urology-clinic') }}">Pediatric Urology
                                        Clinic</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt_15">
                    <div class="case-item">
                        <div class="case-box">
                            <div class="case-image">
                                <img src="{{ asset('/uploads/clinks/12.png') }}" alt="">
                                <div class="overlay"><a href="{{ url('department-details/internal-medicine-clinic') }}"
                                        class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                </div>
                            </div>
                            <div class="case-content">
                                <h4><a href="{{ url('department-details/internal-medicine-clinic') }}">Internal Medicine
                                        Clinic</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt_15">
                    <div class="case-item">
                        <div class="case-box">
                            <div class="case-image">
                                <img src="{{ asset('/uploads/clinks/13.png') }}" alt="">
                                <div class="overlay"><a href="{{ url('department-details/pain-management-clinic') }}"
                                        class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                </div>
                            </div>
                            <div class="case-content">
                                <h4><a href="{{ url('department-details/pain-management-clinic') }}">Pain Management
                                        Clinic</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt_15">
                    <div class="case-item">
                        <div class="case-box">
                            <div class="case-image">
                                <img src="{{ asset('/uploads/clinks/14.png') }}" alt="">
                                <div class="overlay"><a
                                        href="{{ url('department-details/liver-gastro-intestinal-clinic') }}"
                                        class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                </div>
                            </div>
                            <div class="case-content">
                                <h4><a href="{{ url('department-details/liver-gastro-intestinal-clinic') }}">Liver &
                                        Gastro-Intestinal Clinic</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt_15">
                    <div class="case-item">
                        <div class="case-box">
                            <div class="case-image">
                                <img src="{{ asset('/uploads/clinks/15.png') }}" alt="">
                                <div class="overlay"><a href="{{ url('department-details/pediatric-surgery-clinic') }}"
                                        class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                </div>
                            </div>
                            <div class="case-content">
                                <h4><a href="{{ url('department-details/pediatric-surgery-clinic') }}">Pediatric Surgery
                                        Clinic</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt_15">
                    <div class="case-item">
                        <div class="case-box">
                            <div class="case-image">
                                <img src="{{ asset('/uploads/clinks/16.png') }}" alt="">
                                <div class="overlay"><a href="{{ url('department-details/bariatric-surgery-clinic') }}"
                                        class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                </div>
                            </div>
                            <div class="case-content">
                                <h4><a href="{{ url('department-details/bariatric-surgery-clinic') }}">Bariatric Surgery
                                        Clinic</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt_15">
                    <div class="case-item">
                        <div class="case-box">
                            <div class="case-image">
                                <img src="{{ asset('/uploads/clinks/17.png') }}" alt="">
                                <div class="overlay"><a href="{{ url('department-details/chest-clinic') }}"
                                        class="btn-case">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'see_details')->first()->custom_lang : $websiteLang->where('lang_key', 'see_details')->first()->default_lang }}</a>
                                </div>
                            </div>
                            <div class="case-content">
                                <h4><a href="{{ url('department-details/chest-clinic') }}">Chest Clinic</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>



            </div>
            <div class="mb-5">
                {{ $departments->links('patient.paginator') }}
            </div>

        </div>
    </div>
@endsection
