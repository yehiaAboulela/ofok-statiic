@extends('layouts.patient.layout')
@section('title')
    <title>{{ $title_meta->home_title }}</title>
@endsection
@section('meta')
    <meta name="description" content="{{ $title_meta->home_meta_description }}">
@endsection
@section('patient-content')
    <!--Slider Start-->
    <div class="slider HomeSlider" id="main-slider">






        <div class="slide-carousel owl-carousel">
            {{-- @foreach ($sliders as $item)
                <!--$item->image_ar-->
                @if (app()->currentLocale() == 'ar')
                    <div class="slider-item flex" style="background-image:url({{ url($item->image_ar) }});">
                        <div class="bg-slider"></div>
                        <div class="container">
                            <div class="row">

                            </div>
                        </div>
                    </div>
                @else
                    <div class="slider-item flex" style="background-image:url({{ url($item->image) }});">
                        <div class="bg-slider"></div>
                        <div class="container">
                            <div class="row">

                            </div>
                        </div>
                    </div>
                @endif
            @endforeach --}}

            {{-- static content --}}
            <div class="slider-item flex"
                style="background-image:url({{ url(asset('/uploads/ofokNewAssets/home-banner-andrology.png')) }});">
                <div class="bg-slider"></div>
                <div class="container">
                    <div class="banner-text">
                        <h1>Andrology Unit</h1>
                        <p>An integrated treatment journey starting with accurate diagnosis, including medications,
                            injections, laser therapy, and ending with all erectile support types.</p>
                    </div>
                </div>
            </div>
            <div class="slider-item flex"
                style="background-image:url({{ url(asset('/uploads/ofokNewAssets/home-banner-ewsl.png')) }});">
                <div class="bg-slider"></div>
                <div class="container">
                    <div class="banner-text">
                        <h1>Extracorporeal Shock
                            Wave Lithoripsy
                            (ESWL) Unit</h1>
                        <p>A noninvasive procedure to break down the Urinary System stones</p>
                    </div>
                </div>
            </div>
            <div class="slider-item flex"
                style="background-image:url({{ url(asset('/uploads/ofokNewAssets/home-banner-prostate.png')) }});">
                <div class="bg-slider"></div>
                <div class="container">
                    <div class="banner-text">
                        <h1>Prostate Unit</h1>
                        <p>All investigations, therapeutic & surgicall treatments for benign & malignant prostate diseases
                        </p>
                    </div>
                </div>
            </div>
            <div class="slider-item flex"
                style="background-image:url({{ url(asset('/uploads/ofokNewAssets/home-banner-urodynamic.png')) }});">
                <div class="bg-slider"></div>
                <div class="container">
                    <div class="banner-text">
                        <h1>Urodynamic Unit</h1>
                        <p>To measures the ability to hold & empty
                            Urine steadily and completely.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="NewSearchBox">
        <div class="doc-search-item">
            @php
                $sliderContent = App\Setting::first();
            @endphp
            <div class="d-flex align-items-center h_100_p">
                <div class="v-mid-content">
                    <div class="heading">
                        <h2>{{ $sliderContent->slider_heading }}</h2>
                        {{-- <p>{{ $sliderContent->slider_description }}</p> --}}
                    </div>
                    <div class="doc-search-section">
                        <form action="{{ url('search-doctor') }}" method="GET" id="doctorSearchForm">
                            <div class="box">
                                <select name="department" class="form-control select2" id="departmentSelect">
                                    <option value="">
                                        {{ __('Select Department') }}
                                    </option>
                                    @foreach ($departmentsForSearch as $department)
                                        <option {{ request('department') == $department->id ? 'selected' : '' }}
                                            value="{{ $department->id }}">{{ ucwords($department->name) }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="box">
                                <select name="doctor" class="form-control select2" id="doctorSelect">
                                    <option value="">
                                        {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'select_doc')->first()->custom_lang : $websiteLang->where('lang_key', 'select_doc')->first()->default_lang }}
                                    </option>
                                    @foreach ($doctorsForSearch as $doctor)
                                        <option {{ request('doctor') == $doctor->id ? 'selected' : '' }}
                                            value="{{ $doctor->id }}">
                                            {{ ucwords($doctor->name) }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="doc-search-button">
                                <button type="submit" class="btn btn-danger">
                                    {{ __('Search') }}
                                </button>
                            </div>
                        </form>
                    </div>


                </div>
            </div>




        </div>
    </div>
    <!--Slider End-->





    @php
        $feature_section = $homesections->where('section_type', 1)->first();
    @endphp
    <!--Why Us Start-->
    @if ($feature_section->show_homepage == 1)
        <div class="why-us-area pt_30">
            <div class="container">
                <div class="row">
                    @foreach ($features->take($feature_section->content_quantity) as $feature)
                        <div class="col-lg-4 choose-col">
                            <div class="choose-item flex"
                                style="background-image: url({{ url($feature->background_image) }})">
                                <div class="choose-icon">
                                    <i class="{{ $feature->logo }}"></i>
                                </div>
                                <div class="choose-text">
                                    <h4>{{ $feature->title }}</h4>
                                    <p>
                                        {{ $feature->description }}
                                    </p>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>
            </div>
        </div>
        <!--why Us End-->
    @endif

    @php
        $work_section = $homesections->where('section_type', 2)->first();
    @endphp
    @if ($work_section->show_homepage == 1)
        <!--Feature Start-->
        <div class="about-area">
            <div class="container">
                <div class="row align-content-center ov_hd">
                    <div class="col-md-12 wow fadeInDown">
                        <div class="main-headline">
                            <h1><span>{{ ucfirst($work_section->first_header) }}</span>
                                {{ ucfirst($work_section->second_header) }}</h1>
                            <p>{{ $work_section->description }}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="coustom-container">
                <div class="row align-items-center ov_hd">

                    <div class="col-lg-6 wow fadeInRight" data-wow-delay="0.2s">
                        <div class="feature-section-text mt_50">
                            @if (app()->currentLocale() == 'ar')
                                <h2>{{ $work->title_ar }}</h2>
                                <p>{{ $work->description_ar }}</p>
                            @else
                                <h2>{{ $work->title }}</h2>
                                <p>{{ $work->description }}</p>
                            @endif
                            <div class="feature-accordion" id="accordion">
                                @foreach ($workFaqs as $faqIndex => $faq)
                                    @if (app()->currentLocale() == 'ar')
                                        <div class="faq-item card">
                                            <div class="faq-header" id="heading1-{{ $faq->id }}">
                                                <button class="faq-button {{ $faqIndex != 0 ? 'collapsed' : '' }}"
                                                    data-toggle="collapse" data-target="#collapse1-{{ $faq->id }}"
                                                    aria-expanded="true"
                                                    aria-controls="collapse1-{{ $faq->id }}">{{ $faq->question_ar }}</button>
                                            </div>

                                            <div id="collapse1-{{ $faq->id }}"
                                                class="collapse {{ $faqIndex == 0 ? 'show' : '' }}"
                                                aria-labelledby="heading1-{{ $faq->id }}" data-parent="#accordion">
                                                <div class="faq-body">
                                                    {!! clean($faq->answer_ar) !!}
                                                </div>
                                            </div>
                                        </div>
                                    @else
                                        <div class="faq-item card">
                                            <div class="faq-header" id="heading1-{{ $faq->id }}">
                                                <button class="faq-button {{ $faqIndex != 0 ? 'collapsed' : '' }}"
                                                    data-toggle="collapse" data-target="#collapse1-{{ $faq->id }}"
                                                    aria-expanded="true"
                                                    aria-controls="collapse1-{{ $faq->id }}">{{ $faq->question }}</button>
                                            </div>

                                            <div id="collapse1-{{ $faq->id }}"
                                                class="collapse {{ $faqIndex == 0 ? 'show' : '' }}"
                                                aria-labelledby="heading1-{{ $faq->id }}" data-parent="#accordion">
                                                <div class="faq-body">
                                                    {!! clean($faq->answer) !!}
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeInLeft" data-wow-delay="0.2s">
                        <div class="about-skey mt_50">
                            <div class="about-img">
                                {{-- <img src="{{ $work->image ? url($work->image) : '' }}" alt="">
                                <div class="video-section video-section-home">
                                    <a class="video-button mgVideo" href="{{ $work->video }}"><span></span></a>
                                </div> --}}
                                <video controls="" name="media" style="width:100%">
                                    <source src="https://elofok-eg.com/wp-content/uploads/2023/07/Teaser-Long.mp4"
                                        type="video/mp4">
                                </video>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Feature End-->
    @endif

    @php
        $service_section = $homesections->where('section_type', 3)->first();
    @endphp
    @if ($service_section->show_homepage == 1)
        <!--Service Start-->
        <div class="service-area bg-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="main-headline">
                            {{-- <h1><span>{{ ucfirst($service_section->first_header) }}</span>
                                {{ ucfirst($service_section->second_header) }}</h1> --}}
                            <h1><span>{{ ucfirst($service_section->first_header) }}</span>
                                Services</h1>
                            {{-- <p>{{ $service_section->description }}</p> --}}
                            <p>Elofok Medical Center serves his patients with outpatient clinics in different specialties
                                that includes:</p>
                        </div>
                    </div>
                </div>
                <div class="Clinkiemsss">
                    <div class="row">
                        <div class="clinksnewss-carousel owl-carousel">
                            {{-- @foreach ($services->take($service_section->content_quantity) as $service)
                                <div class="col-lg-12">
                                    <div class="clinkkitem">
                                        <div class="iamgeee">
                                            <img src="{{ asset('/uploads/clink_1.png') }}" alt="">
                                        </div>
                                        <div class="clclikdata">
                                            <h2>{{ $service->header }}</h2>
                                            <p>{{ $service->sort_description }}</p>
                                        </div>
                                        <div class="lcinklinkdta">
                                            <a
                                                href="{{ url('service-details/' . $service->slug) }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'service_details')->first()->custom_lang : $websiteLang->where('lang_key', 'service_details')->first()->default_lang }}</a>
                                        </div>
                                    </div>
                                </div>
                            @endforeach --}}

                            {{-- card start --}}
                            <div class="col-lg-12">
                                <div class="clinkkitem">
                                    <div class="iamgeee">
                                        <img src="{{ asset('/uploads/clinks/1.png') }}" alt="">
                                    </div>
                                    <div class="clclikdata">
                                        <h2>Pediatric Clinic</h2>
                                        <p>We provide comprehensive and cutting-edge surgical care that is tailored to meet
                                            the unique needs of each patient</p>
                                    </div>
                                    <div class="lcinklinkdta">
                                        <a
                                            href="{{ url('service-details/pediatric-clinic') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'service_details')->first()->custom_lang : $websiteLang->where('lang_key', 'service_details')->first()->default_lang }}</a>
                                    </div>
                                </div>
                            </div>
                            {{-- card end --}}
                            {{-- card start --}}
                            <div class="col-lg-12">
                                <div class="clinkkitem">
                                    <div class="iamgeee">
                                        <img src="{{ asset('/uploads/clinks/2.png') }}" alt="">
                                    </div>
                                    <div class="clclikdata">
                                        <h2>Clinical Nutrition Clinic</h2>
                                        <p>At our Clinical Nutrition Clinic, we are dedicated to providing you with
                                            personalized and evidence-based nutrition guidance to help you achieve your
                                            health goals.</p>
                                    </div>
                                    <div class="lcinklinkdta">
                                        <a
                                            href="{{ url('service-details/clinical-nutrition-clinic') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'service_details')->first()->custom_lang : $websiteLang->where('lang_key', 'service_details')->first()->default_lang }}</a>
                                    </div>
                                </div>
                            </div>
                            {{-- card end --}}
                            {{-- card start --}}
                            <div class="col-lg-12">
                                <div class="clinkkitem">
                                    <div class="iamgeee">
                                        <img src="{{ asset('/uploads/clinks/3.png') }}" alt="">
                                    </div>
                                    <div class="clclikdata">
                                        <h2>General Surgery Clinic</h2>
                                        <p>We provide comprehensive and cutting-edge surgical care that is tailored to meet
                                            the unique needs of each patient.</p>
                                    </div>
                                    <div class="lcinklinkdta">
                                        <a
                                            href="{{ url('service-details/general-surgery-clinic') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'service_details')->first()->custom_lang : $websiteLang->where('lang_key', 'service_details')->first()->default_lang }}</a>
                                    </div>
                                </div>
                            </div>
                            {{-- card end --}}
                            {{-- card start --}}
                            <div class="col-lg-12">
                                <div class="clinkkitem">
                                    <div class="iamgeee">
                                        <img src="{{ asset('/uploads/clinks/4.png') }}" alt="">
                                    </div>
                                    <div class="clclikdata">
                                        <h2>Rheumatoid Clinic</h2>
                                        <p>At our Rheumatoid Clinic, we provide top-notch care & treatment for individuals
                                            suffering from rheumatoid arthritis. Our team of experienced and highly skilled
                                            rheumatologists are here to improve your quality of life.</p>
                                    </div>
                                    <div class="lcinklinkdta">
                                        <a
                                            href="{{ url('service-details/rheumatoid-clinic') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'service_details')->first()->custom_lang : $websiteLang->where('lang_key', 'service_details')->first()->default_lang }}</a>
                                    </div>
                                </div>
                            </div>
                            {{-- card end --}}
                        </div>
                    </div>
                </div>
                <div class="row service-row" style="display:none">
                    <div class="col-md-12">
                        <div class="service-coloum-area">
                            @foreach ($services->take($service_section->content_quantity) as $service)
                                <div class="service-coloum">
                                    <div class="service-item">
                                        {{-- <i class="{{ $service->icon }}"></i> --}}
                                        @if ($service->header == 'General Urology')
                                            <img src="{{ asset('/uploads/custom-images/icons/General_Urology.png') }}"
                                                alt="">
                                        @elseif($service->header == 'Pediatric Urology')
                                            <img src="{{ asset('/uploads/custom-images/icons/Pediatric_Urology.png') }}"
                                                alt="">
                                        @elseif($service->header == 'Rheumatoid')
                                            <img src="{{ asset('/uploads/custom-images/icons/Rheumatoid.png') }}"
                                                alt="">
                                        @elseif($service->header == 'Internal Medicine')
                                            <img src="{{ asset('/uploads/custom-images/icons/Internal_Medicine.png') }}"
                                                alt="">
                                        @elseif($service->header == 'Pain Management')
                                            <img src="{{ asset('/uploads/custom-images/icons/Pain_Management.png') }}"
                                                alt="">
                                        @elseif($service->header == 'Liver & Gastro-Intestinal')
                                            <img src="{{ asset('/uploads/custom-images/icons/Liver_&_Gastro-Intestinal.png') }}"
                                                alt="">
                                        @elseif($service->header == 'Pediatric Surgery')
                                            <img src="{{ asset('/uploads/custom-images/icons/Pediatric_Surgery.png') }}"
                                                alt="">
                                        @elseif($service->header == 'Cardiovascular')
                                            <img src="{{ asset('/uploads/custom-images/icons/Cardiovascular.png') }}"
                                                alt="">
                                        @elseif($service->header == 'General Surgery')
                                            <img src="{{ asset('/uploads/custom-images/icons/General_Surgery.png') }}"
                                                alt="">
                                        @elseif($service->header == 'Plastic Surgery')
                                            <img src="{{ asset('/uploads/custom-images/icons/Plastic_Surgery.png') }}"
                                                alt="">
                                        @elseif($service->header == 'Bariatric Surgery')
                                            <img src="{{ asset('/uploads/custom-images/icons/Bariatric_Surgery.png') }}"
                                                alt="">
                                        @elseif($service->header == 'Pediatric')
                                            <img src="{{ asset('/uploads/custom-images/icons/Pediatric.png') }}"
                                                alt="">
                                        @elseif($service->header == 'Clinical Nutrition')
                                            <img src="{{ asset('/uploads/custom-images/icons/Clinical_Nutrition.png') }}"
                                                alt="">
                                        @elseif($service->header == 'Orthopedic')
                                            <img src="{{ asset('/uploads/custom-images/icons/Orthopedic.png') }}"
                                                alt="">
                                        @elseif($service->header == 'Neurology')
                                            <img src="{{ asset('/uploads/custom-images/icons/Neurology.png') }}"
                                                alt="">
                                        @elseif($service->header == 'Chest')
                                            <img src="{{ asset('/uploads/custom-images/icons/Chest.png') }}"
                                                alt="">
                                        @elseif($service->header == 'Andrology')
                                            <img src="{{ asset('/uploads/custom-images/icons/Andrology.png') }}"
                                                alt="">
                                        @elseif($service->header == 'Urological Surgery')
                                            <img src="{{ asset('/uploads/custom-images/icons/General_Urology.png') }}"
                                                alt="">
                                        @endif

                                        <h3>{{ $service->header }}</h3>
                                        <p>{{ $service->sort_description }}</p>
                                        <a href="{{ url('service-details/' . $service->slug) }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'service_details')->first()->custom_lang : $websiteLang->where('lang_key', 'service_details')->first()->default_lang }}
                                            →</a>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="home-button ser-btn">
                            <a
                                href="{{ url('service') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'all_service')->first()->custom_lang : $websiteLang->where('lang_key', 'all_service')->first()->default_lang }}</a>
                        </div>
                    </div>
                </div>
                <!--Counter Start-->
                <div class="counter-row row justify-content-center"
                    style="background-image: url({{ $banner->overview ? url($banner->overview) : '' }})">
                    {{-- @foreach ($overviews as $overview)
                        <div class="col-lg-6 mt_30 wow fadeInDown" data-wow-delay="0.2s">
                            <div class="counter-item">
                                <div class="counter-icon">
                                    <i class="{{ $overview->icon }}"></i>
                                </div>
                                <h2 class="counter">{{ $overview->qty }}</h2>
                                <h4>{{ $overview->name }}</h4>
                            </div>
                        </div>
                    @endforeach --}}


                    {{-- static content --}}

                    <div class="col-lg-6 mt_30 wow fadeInDown" data-wow-delay="0.2s">
                        <div class="counter-item">
                            <div class="counter-icon">
                                <img src="https://cdn-icons-png.flaticon.com/512/392/392936.png" alt="">
                            </div>
                            <h2 class="counter">1319</h2>
                            <h4>Successful Urology & Andrology Surgeries
                            </h4>
                        </div>
                    </div>
                    <div class="col-lg-6 mt_30 wow fadeInDown" data-wow-delay="0.2s">
                        <div class="counter-item">
                            <div class="counter-icon">
                                <img src="https://cdn-icons-png.flaticon.com/512/3030/3030918.png" alt="">
                            </div>
                            <h2 class="counter">1680</h2>
                            <h4>Total Successful Surgeries
                            </h4>
                        </div>
                    </div>


                </div>
                <!--Counter End-->
            </div>
        </div>
        <!--Service End-->
    @endif


    @php
        $department_section = $homesections->where('section_type', 4)->first();
    @endphp
    @if ($department_section->show_homepage == 1)
        <!--Portfolio Start-->
        <div class="case-study-home-page case-study-area ">
            <div class="container">
                <div class="row mb_25">
                    <div class="col-md-12 wow fadeInDown" data-wow-delay="0.1s">
                        <div class="main-headline">
                            <h1><span>{{ ucfirst($department_section->first_header) }}</span>
                                {{ ucfirst($department_section->second_header) }}</h1>
                            <p>{{ $department_section->description }}</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    @foreach ($departments->take($department_section->content_quantity) as $department)
                        <div class="col-lg-4 col-md-6 mt_15">
                            <div class="case-item">
                                <div class="case-box">
                                    <div class="case-image">
                                        <img src="{{ url($department->thumbnail_image) }}" alt="">
                                        <div class="overlay"><a
                                                href="{{ url('department-details/' . $department->slug) }}"
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
                    @endforeach
                </div>
                <div class="row mb_60">
                    <div class="col-md-12">
                        <div class="home-button">
                            <a
                                href="{{ url('department') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'all_dep')->first()->custom_lang : $websiteLang->where('lang_key', 'all_dep')->first()->default_lang }}</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif


    @php
        $patient_section = $homesections->where('section_type', 5)->first();
    @endphp
    @if ($patient_section->show_homepage == 1)
        <!--Testimonial Start-->
        <div class="testimonial-area {{ $department_section->show_homepage == 0 ? 'mt_200' : '' }}">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="main-headline">
                            <h1><span>{{ ucfirst($patient_section->first_header) }}</span>
                                {{ ucfirst($patient_section->second_header) }}</h1>
                            <p>{{ $patient_section->description }}</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="testimonial-texarea mt_30">
                            <div class="owl-testimonial owl-carousel">
                                @foreach ($testimonials->take($patient_section->content_quantity) as $patient)
                                    <div class="testimonial-item wow fadeIn" data-wow-delay="0.2s">
                                        <p class="wow fadeInDown" data-wow-delay="0.2s">
                                            {{ $patient->description }}
                                        </p>
                                        <div class="testi-info wow fadeInUp" data-wow-delay="0.2s">
                                            <img src="{{ url($patient->image) }}" alt="">
                                            <h4>{{ $patient->name }}</h4>
                                            <span>{{ $patient->designation }}</span>
                                        </div>
                                    </div>
                                @endforeach


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Testimonial End-->
    @endif



    @php
        $doctor_section = $homesections->where('section_type', 6)->first();
    @endphp
    @if ($doctor_section->show_homepage == 1)
        <!--Team Area Start-->
        <div class="team-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="main-headline">
                            <h1><span>{{ ucfirst($doctor_section->first_header) }}</span>
                                {{ ucfirst($doctor_section->second_header) }}</h1>
                            <p>{{ $doctor_section->description }}</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="team-carousel owl-carousel">
                            @foreach ($doctors->take($doctor_section->content_quantity) as $doctor)
                                <div class="team-item">
                                    <div class="team-photo">
                                        <img src="{{ url($doctor->image) }}" alt="Team Photo">
                                    </div>
                                    <div class="team-text">
                                        <a href="{{ url('doctor-details/' . $doctor->slug) }}">{{ $doctor->name }}</a>
                                        <p>{{ $doctor->department->name }}</p>
                                        <p><span><i class="fas fa-graduation-cap"></i> {{ $doctor->designations }}</span>
                                        </p>
                                        <p><span><b><i class="fas fa-street-view"></i>
                                                    {{ ucfirst($doctor->location->location) }}</b></span></p>
                                    </div>
                                    <div class="team-social">
                                        <ul>
                                            @if ($doctor->facebook)
                                                <li><a href="{{ $doctor->facebook }}"><i
                                                            class="fab fa-facebook-f"></i></a></li>
                                            @endif
                                            @if ($doctor->twitter)
                                                <li><a href="{{ $doctor->twitter }}"><i class="fab fa-twitter"></i></a>
                                                </li>
                                            @endif
                                            @if ($doctor->linkedin)
                                                <li><a href="{{ $doctor->linkedin }}"><i
                                                            class="fab fa-linkedin"></i></a></li>
                                            @endif
                                        </ul>
                                    </div>
                                </div>
                            @endforeach


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Team Area End-->
    @endif





    {{-- <div class="about-area">
        <div class="container">
            <div class="row ov_hd">
                <div class="col-md-12 wow fadeInDown">
                    <div class="main-headline">
                        <h1><span>{{ ucfirst($work_section->first_header) }}</span>
                            {{ ucfirst($work_section->second_header) }}</h1>
                        <p>{{ $work_section->description }}</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="coustom-container">
            <div class="row ov_hd">
                <div class="col-lg-6 wow fadeInLeft" data-wow-delay="0.2s">
                    <div class="about-skey mt_50">
                        <div class="about-img">
                            <img src="{{ url($work->image) }}" alt="">
                            <div class="video-section video-section-home">
                                <a class="video-button mgVideo" href="{{ $work->video }}"><span></span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeInRight" data-wow-delay="0.2s">
                    <div class="feature-section-text mt_50">
                        <h2>{{ $work->title }}</h2>
                        <p>{{ $work->description }}</p>
                        <div class="feature-accordion" id="accordion">
                            @foreach ($workFaqs as $faqIndex => $faq)
                                <div class="faq-item card">
                                    <div class="faq-header" id="heading1-{{ $faq->id }}">
                                        <button class="faq-button {{ $faqIndex != 0 ? 'collapsed' : '' }}"
                                            data-toggle="collapse" data-target="#collapse1-{{ $faq->id }}"
                                            aria-expanded="true"
                                            aria-controls="collapse1-{{ $faq->id }}">{{ $faq->question }}</button>
                                    </div>

                                    <div id="collapse1-{{ $faq->id }}"
                                        class="collapse {{ $faqIndex == 0 ? 'show' : '' }}"
                                        aria-labelledby="heading1-{{ $faq->id }}" data-parent="#accordion">
                                        <div class="faq-body">
                                            {!! clean($faq->answer) !!}
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> --}}




    @php
        $blog_section = $homesections->where('section_type', 7)->first();
    @endphp
    @if ($blog_count != 0)
        @if ($blog_section->show_homepage == 1)
            <!--Blog-Area Start-->
            <div class="blog-area bg_ecf1f8">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="main-headline">
                                <h1><span>{{ ucfirst($blog_section->first_header) }}</span>
                                    {{ ucfirst($blog_section->second_header) }}</h1>
                                <p>{{ $blog_section->description }}</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="blog-item first-blog">
                                <a href="{{ url('blog-details/' . $feature_blog->slug) }}" class="image-effect">
                                    <div class="blog-image">
                                        <img src="{{ url($feature_blog->feature_image) }}" alt="">
                                    </div>
                                </a>
                                <div class="blog-text">
                                    <div class="blog-author">
                                        <span><i class="fas fa-user"></i>
                                            {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'admin')->first()->custom_lang : $websiteLang->where('lang_key', 'admin')->first()->default_lang }}</span>
                                        <span><i class="far fa-calendar-alt"></i>
                                            {{ $feature_blog->created_at->format('m-d-Y') }}</span>
                                    </div>
                                    <h3><a
                                            href="{{ url('blog-details/' . $feature_blog->slug) }}">{{ $feature_blog->title }}</a>
                                    </h3>
                                    <p>
                                        {{ $feature_blog->sort_description }}
                                    </p>
                                    <a class="sm_btn"
                                        href="{{ url('blog-details/' . $feature_blog->slug) }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'details')->first()->custom_lang : $websiteLang->where('lang_key', 'details')->first()->default_lang }}
                                        →</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="blog-carousel owl-carousel">
                                @php $i=0; @endphp
                                @foreach ($blogs->take($blog_section->content_quantity) as $blog)
                                    @php $i++; @endphp
                                    @if ($i == 1)
                                        @continue
                                    @endif
                                    <div class="blog-item effect-item">
                                        {{--                            <a href="{{ url('blog-details/'.$blog->slug) }}" class="image-effect"> --}}
                                        <div class="blog-image">
                                            <img src="{{ $blog->thumbnail_image }}" alt="Blog Thumbnail Image">
                                        </div>
                                        {{--                            </a> --}}
                                        <div class="blog-text">
                                            <div class="blog-author">
                                                <span><i class="fas fa-user"></i>
                                                    {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'admin')->first()->custom_lang : $websiteLang->where('lang_key', 'admin')->first()->default_lang }}</span>
                                                <span><i class="far fa-calendar-alt"></i>
                                                    {{ $blog->created_at->format('m-d-Y') }}</span>
                                            </div>
                                            <h3><a
                                                    href="{{ url('blog-details/' . $blog->slug) }}">{{ $blog->title }}</a>
                                            </h3>
                                            <p>
                                                {{ $blog->sort_description }}
                                            </p>
                                            <a class="sm_btn"
                                                href="{{ url('blog-details/' . $blog->slug) }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key', 'details')->first()->custom_lang : $websiteLang->where('lang_key', 'details')->first()->default_lang }}
                                                →</a>
                                        </div>
                                    </div>
                                @endforeach


                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Blog-Area End-->
        @endif
    @endif
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#departmentSelect').change(function() {
                var departmentId = $(this).val();
                $.ajax({
                    url: '{{ route('get.doctors.by.department') }}',
                    type: 'GET',
                    data: {
                        department_id: departmentId
                    },
                    success: function(response) {
                        var doctors = response.data;
                        $('#doctorSelect').empty().append(
                            '<option value="">{{ __('Select Doctor') }}</option>');
                        $.each(doctors, function(index, doctor) {
                            var doctorName = doctor.name[
                                'en']; // Adjust to 'ar' for Arabic name
                            $('#doctorSelect').append('<option value="' + doctor.id +
                                '">' + doctorName + '</option>');
                        });
                    },
                    error: function(xhr, status, error) {
                        console.error(error);
                        alert('Error fetching doctors. Please try again.');
                    }
                });
            });

            // Handle change event for doctor selection
            $('#doctorSelect').change(function() {
                var selectedDoctorId = $(this).val();
                var selectedDoctorName = $(this).find('option:selected').text(); // Get selected doctor name
                console.log('Selected Doctor ID:', selectedDoctorId);
                console.log('Selected Doctor Name:', selectedDoctorName);
            });
        });
    </script>




@endsection
@section('scripts')
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#departmentSelect').change(function() {
                var departmentId = $(this).val();
                $.ajax({
                    url: '{{ route('get.doctors.by.department') }}',
                    type: 'GET',
                    data: {
                        department_id: departmentId
                    },
                    success: function(response) {
                        var doctors = response.data;
                        $('#doctorSelect').empty().append(
                            '<option value="">{{ __('Select Doctor') }}</option>');
                        $.each(doctors, function(index, doctor) {
                            var doctorName = doctor.name[
                                'en']; // Adjust to 'ar' for Arabic name
                            $('#doctorSelect').append('<option value="' + doctor.id +
                                '">' + doctorName + '</option>');
                        });
                    },
                    error: function(xhr, status, error) {
                        console.error(error);
                        alert('Error fetching doctors. Please try again.');
                    }
                });
            });

            // Handle change event for doctor selection
            $('#doctorSelect').change(function() {
                var selectedDoctorId = $(this).val();
                var selectedDoctorName = $(this).find('option:selected').text(); // Get selected doctor name
                console.log('Selected Doctor ID:', selectedDoctorId);
                console.log('Selected Doctor Name:', selectedDoctorName);
            });
        });
    </script>
@endsection
