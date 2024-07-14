@include('layouts.admin.header')
<body id="page-top" class="body_bg">

@php
    $websiteLang=App\ManageText::all();
    $setting=App\Setting::first();
@endphp
    <!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{ route('home') }}">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-stethoscope"></i>
            </div>
            <div class="sidebar-brand-text mx-3">{{ env('APP_NAME') }}</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item {{ Route::is('admin.dashboard')?'active':'' }}">
            <a class="nav-link" href="{{ route('admin.dashboard') }}">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','dashboard')->first()->custom_lang :  $websiteLang->where('lang_key','dashboard')->first()->default_lang }}</span></a>
        </li>


        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link" href="#" data-toggle="collapse" data-target="#admin-order-pages"
               aria-expanded="true" aria-controls="admin-order-pages">
                <i class="fas fa-fw fa-folder"></i>
                <span> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','order')->first()->custom_lang :  $websiteLang->where('lang_key','order')->first()->default_lang }}</span>
            </a>
            <div id="admin-order-pages"
                 class="collapse {{Route::is('admin.all.order') || Route::is('admin.pending.order') || Route::is('admin.show.order') ?'show':''}}"
                 aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item {{ Route::is('admin.pending.order')?'active':'' }}"
                       href="{{ route('admin.pending.order') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','pending_order')->first()->custom_lang :  $websiteLang->where('lang_key','pending_order')->first()->default_lang }}</a>
                    <a class="collapse-item {{ Route::is('admin.all.order') || Route::is('admin.show.order')?'active':'' }}"
                       href="{{ route('admin.all.order') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','all_order')->first()->custom_lang :  $websiteLang->where('lang_key','all_order')->first()->default_lang }}</a>

                </div>
            </div>
        </li>


        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#admin-appointment-pages"
               aria-expanded="true" aria-controls="admin-appointment-pages">
                <i class="fas fa-fw fa-folder"></i>
                <span> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','app')->first()->custom_lang : $websiteLang->where('lang_key','app')->first()->default_lang }}</span>
            </a>
            <div id="admin-appointment-pages"
                 class="collapse {{ Route::is('admin.new.appointment') || Route::is('admin.all.appointment') || Route::is('admin.prescribe') || Route::is('admin.patients') || Route::is('admin.payment') || Route::is('admin.schedule.*') || Route::is('admin.habit.index') || Route::is('admin.appointment.show') || Route::is('admin.meeting-history') || Route::is('admin.prescribe.show') || Route::is('admin.patient.show') || Route::is('admin.day.*') ? 'show':'' }}"
                 aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item {{ Route::is('admin.new.appointment') ?'active':'' }}"
                       href="{{ route('admin.new.appointment') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','new_app')->first()->custom_lang : $websiteLang->where('lang_key','new_app')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.all.appointment') || Route::is('admin.appointment.show') ?'active':'' }}"
                       href="{{ route('admin.all.appointment') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','all_app')->first()->custom_lang : $websiteLang->where('lang_key','all_app')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.prescribe') || Route::is('admin.prescribe.show')?'active':'' }}"
                       href="{{ route('admin.prescribe') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','prescription')->first()->custom_lang : $websiteLang->where('lang_key','prescription')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.patients') || Route::is('admin.patient.show')?'active':'' }}"
                       href="{{ route('admin.patients') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','patient')->first()->custom_lang :  $websiteLang->where('lang_key','patient')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.payment')?'active':'' }}"
                       href="{{ route('admin.payment') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','payment')->first()->custom_lang : $websiteLang->where('lang_key','payment')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.schedule.*')?'active':'' }}"
                       href="{{ route('admin.schedule.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','schedule')->first()->custom_lang : $websiteLang->where('lang_key','schedule')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.day.*')?'active':'' }}"
                       href="{{ route('admin.day.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','day')->first()->custom_lang : $websiteLang->where('lang_key','day')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.habit.index')?'active':'' }}"
                       href="{{ route('admin.habit.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','habit')->first()->custom_lang : $websiteLang->where('lang_key','habit')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.meeting-history')?'active':'' }}"
                       href="{{ route('admin.meeting-history') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','zoom_meeting')->first()->custom_lang : $websiteLang->where('lang_key','zoom_meeting')->first()->default_lang }}</a>


                </div>
            </div>
        </li>


        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
               aria-expanded="true" aria-controls="collapsePages">
                <i class="fas fa-fw fa-folder"></i>
                <span>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','setup_page')->first()->custom_lang : $websiteLang->where('lang_key','setup_page')->first()->default_lang }}</span>
            </a>
            <div id="collapsePages" class="collapse {{
                Route::is('admin.service.*') ||
                Route::is('admin.faq-category.index') ||
                Route::is('admin.testimonial.index') ||
                Route::is('admin.about.index') ||
                Route::is('admin.custom-page.index') ||
                Route::is('admin.terms-privacy.index') ||
                Route::is('admin.service-video.*') ||
                Route::is('admin.faq.by.service')||
                Route::is('admin.custom-page.*') ||
                Route::is('admin.faq.category')
                 ? 'show':'' }}" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">


                    <a class="collapse-item {{ Route::is('admin.service.*') || Route::is('admin.service-video.*') || Route::is('admin.faq.by.service')?'active':'' }}"
                       href="{{ route('admin.service.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','service')->first()->custom_lang : $websiteLang->where('lang_key','service')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.faq-category.index') || Route::is('admin.faq.category')?'active':'' }}"
                       href="{{ route('admin.faq-category.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','faq')->first()->custom_lang : $websiteLang->where('lang_key','faq')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.testimonial.index')?'active':'' }}"
                       href="{{ route('admin.testimonial.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','testi')->first()->custom_lang : $websiteLang->where('lang_key','testi')->first()->default_lang }}</a>
                    <a class="collapse-item {{ Route::is('admin.about.index')?'active':'' }}"
                       href="{{ route('admin.about.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','about')->first()->custom_lang :  $websiteLang->where('lang_key','about')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.custom-page.index') || Route::is('admin.custom-page.*')?'active':'' }}"
                       href="{{ route('admin.custom-page.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','custom_page')->first()->custom_lang :  $websiteLang->where('lang_key','custom_page')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.terms-privacy.index')?'active':'' }}"
                       href="{{ route('admin.terms-privacy.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','term_and_cond')->first()->custom_lang : $websiteLang->where('lang_key','term_and_cond')->first()->default_lang }}</a>
                </div>
            </div>
        </li>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#medichine-2-pages"
               aria-expanded="true" aria-controls="medichine-2-pages">
                <i class="fas fa-fw fa-folder"></i>
                <span>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','medicine')->first()->custom_lang : $websiteLang->where('lang_key','medicine')->first()->default_lang }}</span>
            </a>
            <div id="medichine-2-pages"
                 class="collapse {{ Route::is('admin.medicine.*') || Route::is('admin.medicine-type.index') ? 'show': '' }}"
                 aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item {{ Route::is('admin.medicine.*') ? 'active' :'' }}"
                       href="{{ route('admin.medicine.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','medicine')->first()->custom_lang : $websiteLang->where('lang_key','medicine')->first()->default_lang }}</a>
                    <a class="collapse-item {{ Route::is('admin.medicine-type.index') ? 'active' :'' }}"
                       href="{{ route('admin.medicine-type.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','medicine_type')->first()->custom_lang : $websiteLang->where('lang_key','medicine_type')->first()->default_lang }}</a>


                </div>
            </div>
        </li>
        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#doctor-2-pages"
               aria-expanded="true" aria-controls="doctor-2-pages">
                <i class="fas fa-fw fa-folder"></i>
                <span>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','doctor')->first()->custom_lang : $websiteLang->where('lang_key','doctor')->first()->default_lang }}</span>
            </a>
            <div id="doctor-2-pages"
                 class="collapse {{ Route::is('admin.department.*') || Route::is('admin.location.*') || Route::is('admin.doctor.*') ? 'show': '' }}"
                 aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item {{ Route::is('admin.department.*')?'active':'' }}"
                       href="{{ route('admin.department.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','dep')->first()->custom_lang : $websiteLang->where('lang_key','dep')->first()->default_lang }}</a>
                    <a class="collapse-item {{ Route::is('admin.unit.*')?'active':'' }}"
                       href="{{ route('admin.unit.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','unit')->first()->custom_lang : $websiteLang->where('lang_key','unit')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.location.*')?'active':'' }}"
                       href="{{ route('admin.location.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','location')->first()->custom_lang : $websiteLang->where('lang_key','location')->first()->default_lang }}</a>
                    <a class="collapse-item {{ Route::is('admin.doctor.*')?'active':'' }}"
                       href="{{ route('admin.doctor.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','doctor')->first()->custom_lang : $websiteLang->where('lang_key','doctor')->first()->default_lang }}</a>


                </div>
            </div>
        </li>

        <!-- Laboratory and packages - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#lab-package-2-pages"
               aria-expanded="true" aria-controls="doctor-2-pages">
                <i class="fas fa-fw fa-folder"></i>
                <span>Lab&packages</span>
            </a>
            <div id="lab-package-2-pages"
                 class="collapse {{ Route::is('admin.laboratories.*') || Route::is('admin.packages.*') || Route::is('admin.investigations.*') ? 'show': '' }}"
                 aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item {{ Route::is('admin.laboratories.*')?'active':'' }}"
                       href="{{ route('admin.laboratories.index') }}">
                        @lang('dashboard.laboratory.title')
                    </a>
                    <a class="collapse-item {{ Route::is('admin.investigations.*')?'active':'' }}"
                       href="{{ route('admin.investigations.index') }}">
                        @lang('dashboard.investigations.title')
                    </a>

                    <a class="collapse-item {{ Route::is('admin.packages.*')?'active':'' }}"
                       href="{{ route('admin.packages.index') }}">
                        @lang('dashboard.packages.title')
                    </a>
                </div>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#withdaw-method"
               aria-expanded="true" aria-controls="withdaw-method">
                <i class="fas fa-fw fa-folder"></i>
                <span>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_payment')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_payment')->first()->default_lang }}</span>
            </a>
            <div id="withdaw-method"
                 class="collapse {{ Route::is('admin.withdraw-method.*') || Route::is('admin.doctor-withdraw') || Route::is('admin.pending-withdraw') || Route::is('admin.show-doctor-withdraw') ? 'show' : '' }}"
                 aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item {{ Route::is('admin.withdraw-method.*') ? 'active':'' }}"
                       href="{{ route('admin.withdraw-method.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_method')->first()->custom_lang :  $websiteLang->where('lang_key','withdraw_method')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.doctor-withdraw') || Route::is('admin.show-doctor-withdraw') ? 'active':'' }}"
                       href="{{ route('admin.doctor-withdraw') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','doctor_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','doctor_withdraw')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.pending-withdraw') ? 'active':'' }}"
                       href="{{ route('admin.pending-withdraw') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','pending_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','pending_withdraw')->first()->default_lang }}</a>
                </div>
            </div>
        </li>


        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#page-setup-pages"
               aria-expanded="true" aria-controls="page-setup-pages">
                <i class="fas fa-fw fa-folder"></i>
                <span>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','seo_setup')->first()->custom_lang :  $websiteLang->where('lang_key','seo_setup')->first()->default_lang }}</span>
            </a>
            <div id="page-setup-pages" class="collapse {{
                    Route::is('admin.home.page') ||
                    Route::is('admin.aboutus.page') ||
                    Route::is('admin.doctor-page') ||
                    Route::is('admin.department-page') ||
                    Route::is('admin.service-page') ||
                    Route::is('admin.testimonial.page') ||
                    Route::is('admin.faq.page') ||
                    Route::is('admin.blog.page') ||
                    Route::is('admin.contactus.page') ? 'show':'' }}" aria-labelledby="headingPages"
                 data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item {{ Route::is('admin.home.page')?'active':'' }}"
                       href="{{ route('admin.home.page') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','home_page')->first()->custom_lang :  $websiteLang->where('lang_key','home_page')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.aboutus.page')?'active':'' }}"
                       href="{{ route('admin.aboutus.page') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','about_us')->first()->custom_lang :  $websiteLang->where('lang_key','about_us')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.doctor-page')?'active':'' }}"
                       href="{{ route('admin.doctor-page') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','doctor')->first()->custom_lang : $websiteLang->where('lang_key','doctor')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.department-page')?'active':'' }}"
                       href="{{ route('admin.department-page') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','dep')->first()->custom_lang : $websiteLang->where('lang_key','dep')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.service-page')?'active':'' }}"
                       href="{{ route('admin.service-page') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','service')->first()->custom_lang : $websiteLang->where('lang_key','service')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.testimonial.page')?'active':'' }}"
                       href="{{ route('admin.testimonial.page') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','testi')->first()->custom_lang :  $websiteLang->where('lang_key','testi')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.faq.page')?'active':'' }}"
                       href="{{ route('admin.faq.page') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','faq')->first()->custom_lang : $websiteLang->where('lang_key','faq')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.blog.page')?'active':'' }}"
                       href="{{ route('admin.blog.page') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','blog')->first()->custom_lang : $websiteLang->where('lang_key','blog')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.contactus.page')?'active':'' }}"
                       href="{{ route('admin.contactus.page') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','contact_us')->first()->custom_lang : $websiteLang->where('lang_key','contact_us')->first()->default_lang }}</a>

                </div>
            </div>
        </li>
        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#website-setup-pages"
               aria-expanded="true" aria-controls="website-setup-pages">
                <i class="fas fa-fw fa-folder"></i>
                <span>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','language')->first()->custom_lang :  $websiteLang->where('lang_key','language')->first()->default_lang }}</span>
            </a>
            <div id="website-setup-pages" class="collapse {{
                    Route::is('admin.setup.navbar') ||
                    Route::is('admin.setup.text') || Route::is('admin.validation.errors') || Route::is('admin.notification.text') ? 'show':'' }}"
                 aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item {{ Route::is('admin.setup.navbar')?'active':'' }}"
                       href="{{ route('admin.setup.navbar') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','navbar')->first()->custom_lang : $websiteLang->where('lang_key','navbar')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.setup.text')?'active':'' }}"
                       href="{{ route('admin.setup.text') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','website_lang')->first()->custom_lang : $websiteLang->where('lang_key','website_lang')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.validation.errors')?'active':'' }}"
                       href="{{ route('admin.validation.errors') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','valid_lang')->first()->custom_lang : $websiteLang->where('lang_key','valid_lang')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.notification.text')?'active':'' }}"
                       href="{{ route('admin.notification.text') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','notify_lang')->first()->custom_lang : $websiteLang->where('lang_key','notify_lang')->first()->default_lang }}</a>


                </div>
            </div>
        </li>


        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#home-section-2-pages"
               aria-expanded="true" aria-controls="home-section-2-pages">
                <i class="fas fa-fw fa-folder"></i>
                <span>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','home_section')->first()->custom_lang :  $websiteLang->where('lang_key','home_section')->first()->default_lang }}</span>
            </a>
            <div id="home-section-2-pages"
                 class="collapse {{ Route::is('admin.feature.index') || Route::is('admin.slider.index') || Route::is('admin.home-section.*') || Route::is('admin.overview.index') || Route::is('admin.work.index') || Route::is('admin.work-faq.index') || Route::is('admin.partner.index') || Route::is('admin.slider.content') ? 'show': '' }}"
                 aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item {{ Route::is('admin.slider.index') || Route::is('admin.slider.content')?'active':'' }}"
                       href="{{ route('admin.slider.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','slider')->first()->custom_lang : $websiteLang->where('lang_key','slider')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.feature.index')?'active':'' }}"
                       href="{{ route('admin.feature.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','feature')->first()->custom_lang : $websiteLang->where('lang_key','feature')->first()->default_lang }}</a>


                    <a class="collapse-item {{ Route::is('admin.work.index')?'active':'' }}"
                       href="{{ route('admin.work.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','work_section')->first()->custom_lang : $websiteLang->where('lang_key','work_section')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.work-faq.index')?'active':'' }}"
                       href="{{ route('admin.work-faq.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','work_faq')->first()->custom_lang : $websiteLang->where('lang_key','work_faq')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.overview.index')?'active':'' }}"
                       href="{{ route('admin.overview.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','overview')->first()->custom_lang : $websiteLang->where('lang_key','overview')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.partner.index')?'active':'' }}"
                       href="{{ route('admin.partner.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','partner')->first()->custom_lang : $websiteLang->where('lang_key','partner')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.home-section.*')?'active':'' }}"
                       href="{{ route('admin.home-section.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','section_control')->first()->custom_lang : $websiteLang->where('lang_key','section_control')->first()->default_lang }}</a>


                </div>
            </div>
        </li>


        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#setting-pages"
               aria-expanded="true" aria-controls="setting-pages">
                <i class="fas fa-fw fa-folder"></i>
                <span> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','setting')->first()->custom_lang :  $websiteLang->where('lang_key','setting')->first()->default_lang }}</span>
            </a>
            <div id="setting-pages" class="collapse {{
                    Route::is('admin.settings.index') ||
                    Route::is('admin.comment.setting') ||
                    Route::is('admin.cookie.consent.setting') ||
                    Route::is('admin.payment-account.index') ||
                    Route::is('admin.captcha.setting') ||
                    Route::is('admin.livechat.setting') ||
                    Route::is('admin.preloader.setting') ||
                    Route::is('admin.google.analytic.setting') ||
                    Route::is('admin.theme-color') ||
                    Route::is('admin.pagination.index') ||
                    Route::is('admin.clear.database') ||
                    Route::is('admin.banner.image') ||
                    Route::is('admin.email.template') ||
                    Route::is('admin.email-edit') ||
                    Route::is('admin.email-configuration') ||
                    Route::is('admin.login.image') ||
                    Route::is('admin.profile.image') ||
                    Route::is('admin.database-generate') ||
                    Route::is('admin.zoom-credential') ? 'show' :'' }}"
                 aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item {{ Route::is('admin.settings.index')?'active':'' }}"
                       href="{{ route('admin.settings.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','general_setting')->first()->custom_lang : $websiteLang->where('lang_key','general_setting')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.comment.setting')?'active':'' }}"
                       href="{{ route('admin.comment.setting') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','blog_comment')->first()->custom_lang : $websiteLang->where('lang_key','blog_comment')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.cookie.consent.setting')?'active':'' }}"
                       href="{{ route('admin.cookie.consent.setting') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','cookie_consent')->first()->custom_lang :  $websiteLang->where('lang_key','cookie_consent')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.payment-account.index')?'active':'' }}"
                       href="{{ route('admin.payment-account.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','payment_account')->first()->custom_lang :  $websiteLang->where('lang_key','payment_account')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.captcha.setting')?'active':'' }}"
                       href="{{ route('admin.captcha.setting') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','google_captcha')->first()->custom_lang :  $websiteLang->where('lang_key','google_captcha')->first()->default_lang }}</a>
                    <a class="collapse-item {{ Route::is('admin.livechat.setting')?'active':'' }}"
                       href="{{ route('admin.livechat.setting') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','live_chat')->first()->custom_lang :  $websiteLang->where('lang_key','live_chat')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.preloader.setting')?'active':'' }}"
                       href="{{ route('admin.preloader.setting') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','preloader')->first()->custom_lang :  $websiteLang->where('lang_key','preloader')->first()->default_lang }}</a>
                    <a class="collapse-item {{ Route::is('admin.google.analytic.setting')?'active':'' }}"
                       href="{{ route('admin.google.analytic.setting') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','google_analytic')->first()->custom_lang :  $websiteLang->where('lang_key','google_analytic')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.theme-color')?'active':'' }}"
                       href="{{ route('admin.theme-color') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','theme_color')->first()->custom_lang :  $websiteLang->where('lang_key','theme_color')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.pagination.index')?'active':'' }}"
                       href="{{ route('admin.pagination.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','pagination')->first()->custom_lang : $websiteLang->where('lang_key','pagination')->first()->default_lang }}</a>


                    <a class="collapse-item {{ Route::is('admin.clear.database')?'active':'' }}"
                       href="{{ route('admin.clear.database') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','clear_database')->first()->custom_lang :  $websiteLang->where('lang_key','clear_database')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.email.template') || Route::is('admin.email-edit')?'active':'' }}"
                       href="{{ route('admin.email.template') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','email_template')->first()->custom_lang :  $websiteLang->where('lang_key','email_template')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.email-configuration')?'active':'' }}"
                       href="{{ route('admin.email-configuration') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','email_config')->first()->custom_lang :  $websiteLang->where('lang_key','email_config')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.banner.image')?'active':'' }}"
                       href="{{ route('admin.banner.image') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','banner_img')->first()->custom_lang :  $websiteLang->where('lang_key','banner_img')->first()->default_lang }}</a>
                    <a class="collapse-item {{ Route::is('admin.login.image')?'active':'' }}"
                       href="{{ route('admin.login.image') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','login_img')->first()->custom_lang : $websiteLang->where('lang_key','login_img')->first()->default_lang }}</a>
                    <a class="collapse-item {{ Route::is('admin.profile.image')?'active':'' }}"
                       href="{{ route('admin.profile.image') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','default_profile_img')->first()->custom_lang : $websiteLang->where('lang_key','default_profile_img')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.database-generate')?'active':'' }}"
                       href="{{ route('admin.database-generate') }}">Database generate</a>

                    <a class="collapse-item {{ Route::is('admin.zoom-credential')?'active':'' }}"
                       href="{{ route('admin.zoom-credential') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','zoom_setting')->first()->custom_lang : $websiteLang->where('lang_key','zoom_setting')->first()->default_lang }}</a>

                </div>
            </div>
        </li>

        @php
            $admin=Auth::guard('admin')->user();
        @endphp
        @if ($admin->admin_type==1)
            <li class="nav-item {{ Route::is('admin.admin-list.index')?'active':'' }}">
                <a class="nav-link" href="{{ route('admin.admin-list.index') }}">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','admin')->first()->custom_lang : $websiteLang->where('lang_key','admin')->first()->default_lang }}</span></a>
            </li>
        @endif



        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#blog-pages"
               aria-expanded="true" aria-controls="blog-pages">
                <i class="fas fa-fw fa-folder"></i>
                <span>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','blog')->first()->custom_lang : $websiteLang->where('lang_key','blog')->first()->default_lang }}</span>
            </a>
            <div id="blog-pages"
                 class="collapse {{ Route::is('admin.blog-comment') || Route::is('admin.blog-category.*') || Route::is('admin.blog.index') || Route::is('admin.blog.edit') || Route::is('admin.blog.create')  ? 'show': '' }}"
                 aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">

                    <a class="collapse-item {{ Route::is('admin.blog-category.*')?'active':'' }}"
                       href="{{ route('admin.blog-category.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','blog_cat')->first()->custom_lang : $websiteLang->where('lang_key','blog_cat')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.blog.index') || Route::is('admin.blog.create') || Route::is('admin.blog.edit') ? 'active':'' }}"
                       href="{{ route('admin.blog.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','blog')->first()->custom_lang : $websiteLang->where('lang_key','blog')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.blog-comment')?'active':'' }}"
                       href="{{ route('admin.blog-comment') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','blog_comment')->first()->custom_lang :  $websiteLang->where('lang_key','blog_comment')->first()->default_lang }}</a>
                </div>
            </div>
        </li>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#contact-2-pages"
               aria-expanded="true" aria-controls="contact-2-pages">
                <i class="fas fa-fw fa-folder"></i>
                <span>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','contact')->first()->custom_lang : $websiteLang->where('lang_key','contact')->first()->default_lang }}</span>
            </a>
            <div id="contact-2-pages"
                 class="collapse {{ Route::is('admin.contact.message') || Route::is('admin.prescription.contact') || Route::is('admin.contact-us.index') || Route::is('admin.contact-information.index') ? 'show': '' }}"
                 aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item {{ Route::is('admin.prescription.contact')?'active':'' }}"
                       href="{{ route('admin.prescription.contact') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','prescription_contact')->first()->custom_lang : $websiteLang->where('lang_key','prescription_contact')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.contact-us.index')?'active':'' }}"
                       href="{{ route('admin.contact-us.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','topbar_contact')->first()->custom_lang :  $websiteLang->where('lang_key','topbar_contact')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.contact-information.index')?'active':'' }}"
                       href="{{ route('admin.contact-information.index') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','contact_info')->first()->custom_lang : $websiteLang->where('lang_key','contact_info')->first()->default_lang }}</a>
                    <a class="collapse-item {{ Route::is('admin.contact.message')?'active':'' }}"
                       href="{{ route('admin.contact.message') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','contact_msg')->first()->custom_lang :  $websiteLang->where('lang_key','contact_msg')->first()->default_lang }}</a>
                </div>
            </div>
        </li>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#subscriber-2-pages"
               aria-expanded="true" aria-controls="subscriber-2-pages">
                <i class="fas fa-fw fa-folder"></i>
                <span>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','subscribers')->first()->custom_lang : $websiteLang->where('lang_key','subscribers')->first()->default_lang }}</span>
            </a>
            <div id="subscriber-2-pages"
                 class="collapse {{ Route::is('admin.subscriber') || Route::is('admin.subscriber.content') || Route::is('admin.subscriber.email') ? 'show': '' }}"
                 aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item {{ Route::is('admin.subscriber')?'active':'' }}"
                       href="{{ route('admin.subscriber') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','subscribers')->first()->custom_lang : $websiteLang->where('lang_key','subscribers')->first()->default_lang }}</a>

                    <a class="collapse-item {{ Route::is('admin.subscriber.email')?'active':'' }}"
                       href="{{ route('admin.subscriber.email') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','email_for_sub')->first()->custom_lang : $websiteLang->where('lang_key','email_for_sub')->first()->default_lang }}</a>


                    <a class="collapse-item {{ Route::is('admin.subscriber.content')?'active':'' }}"
                       href="{{ route('admin.subscriber.content') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','sub_content')->first()->custom_lang : $websiteLang->where('lang_key','sub_content')->first()->default_lang }}</a>


                </div>
            </div>
        </li>


        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>


        {{--
        <div class="sidebar-card d-none d-lg-flex">
            <a class="btn btn-success btn-sm" href="javascript:;">{{ app()->currentLocale() == 'ar  ?$websiteLang->where('lang_key','app_version')->first()->custom_lang }}: {{ $setting->app_version }} Test : websiteLang->where('lang_key','app_version')->first()->custom_lang }}: {{ $setting->app_version default Test</a>
        </div>
        --}}

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fas fa-bars"></i>
                </button>
                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                             aria-labelledby="searchDropdown">
                            <form class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small"
                                           placeholder="Search for..." aria-label="Search"
                                           aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>

                    @php
                        $orderNotify=App\Order::where('show_notification',0)->orderBy('created_at','desc')->get();
                        $messageNotify=App\ContactMessage::where('show_notification',0)->orderBy('created_at','desc')->get();
                    @endphp

                        <!-- Nav Item - Alerts -->
                    <li class="nav-item dropdown no-arrow mx-1">
                        <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Language
                        </a>
                        <!-- Dropdown - Alerts -->
                        <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="alertsDropdown">
                            <ul class="sub-menu">
                                @if(App::currentLocale() == 'ar')
                                    <li><a href="{{ route('change_lang', 'en') }}">English</a></li>
                                @else
                                    <li><a href="{{ route('change_lang', 'ar') }}">Arabic </a></li>
                                @endif
                            </ul>
                        </div>
                    </li>

                    <!-- Nav Item - Alerts -->
                    <li class="nav-item dropdown no-arrow mx-1">
                        <a onclick="newOrderNotify()" class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
                           role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-bell fa-fw"></i>
                            <!-- Counter - Alerts -->
                            <span class="badge badge-danger badge-counter"
                                  id="newOrderNotify">{{ $orderNotify->count() > 0 ?$orderNotify->count() :''  }}</span>
                        </a>
                        <!-- Dropdown - Alerts -->
                        <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="alertsDropdown">
                            <h6 class="dropdown-header">
                                {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','order_center')->first()->custom_lang : $websiteLang->where('lang_key','order_center')->first()->default_lang }}
                            </h6>
                            @foreach ($orderNotify->take(5) as $item)
                                <a class="dropdown-item d-flex align-items-center"
                                   href="{{ route('admin.show.order',$item->id) }}">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">{{ $item->created_at->format('Y-m-d') }}</div>
                                        <span
                                            class="font-weight-bold">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','new_order_from')->first()->custom_lang : $websiteLang->where('lang_key','new_order_from')->first()->default_lang }} {{ $item->user->name}}</span>
                                    </div>
                                </a>
                            @endforeach

                            <a class="dropdown-item text-center small text-gray-500"
                               href="{{ route('admin.all.order') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','show_all_order')->first()->custom_lang : $websiteLang->where('lang_key','show_all_order')->first()->default_lang }}</a>
                        </div>
                    </li>

                    <!-- Nav Item - Messages -->
                    <li class="nav-item dropdown no-arrow mx-1">
                        <a onclick="newMessageNotify()" class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
                           role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-envelope fa-fw"></i>
                            <!-- Counter - Messages -->
                            <span class="badge badge-danger badge-counter"
                                  id="newMessageNotify">{{ $messageNotify->count() > 0 ? $messageNotify->count() :'' }}</span>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="messagesDropdown">
                            <h6 class="dropdown-header">
                                {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','msg_center')->first()->custom_lang : $websiteLang->where('lang_key','msg_center')->first()->default_lang }}
                            </h6>
                            @foreach ($messageNotify->take(5) as $item)
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg"
                                             alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div
                                            class="text-truncate">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','new_msg_from')->first()->custom_lang : $websiteLang->where('lang_key','new_msg_from')->first()->default_lang }} {{ $item->name }}</div>
                                        <div class="small text-gray-500">{{ $item->created_at->format('Y-m-d') }}</div>
                                    </div>
                                </a>
                            @endforeach

                            <a class="dropdown-item text-center small text-gray-500"
                               href="{{ route('admin.contact.message') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','read_more_msg')->first()->custom_lang :  $websiteLang->where('lang_key','read_more_msg')->first()->default_lang }}</a>
                        </div>
                    </li>

                    <div class="topbar-divider d-none d-sm-block"></div>

                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            @php
                                $adminInfo=Auth::guard('admin')->user();
                                $default_profile=App\BannerImage::first();
                            @endphp
                            <span
                                class="mr-2 d-none d-lg-inline text-gray-600 small">{{ ucfirst($adminInfo->name) }}</span>
                            @if ($adminInfo->image)
                                <img class="img-profile rounded-circle"
                                     src="{{ url($adminInfo->image) }}">
                            @else
                                <img class="img-profile rounded-circle"
                                     src="{{ url($default_profile->default_profile) }}">
                            @endif

                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="{{ route('admin.profile') }}">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','profile')->first()->custom_lang : $websiteLang->where('lang_key','profile')->first()->default_lang }}
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="{{ route('admin.logout') }}">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','logout')->first()->custom_lang : $websiteLang->where('lang_key','logout')->first()->default_lang }}
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                @yield('admin-content')

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->


    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.html">Logout</a>
            </div>
        </div>
    </div>
</div>

@include('layouts.admin.footer')
