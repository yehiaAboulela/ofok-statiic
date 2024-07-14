@section('title')
{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','register')->first()->custom_lang : $websiteLang->where('lang_key','register')->first()->default_lang }}
@endsection
@include('layouts.admin.header')
<body id="page-top" class="body_bg">
<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-12 col-lg-12 col-md-12">

            <div class="card o-hidden border-0 shadow-lg mt_100 mb_100">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-block bg-login-image" style="background-image:url({{ $image->doctor_login ? url($image->doctor_login) :'' }});"></div>
                        <div class="col-lg-6">
                            <div class="px-5 py-4 doctor-form">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','doctor_register')->first()->custom_lang : $websiteLang->where('lang_key','doctor_register')->first()->default_lang }}</h1>
                                </div>
                                <form class="user" action="{{ route('doctor.register') }}" method="POST">
                                    @csrf
                                    <div class="form-group">
                                        <input type="text" name="name" class="form-control form-control-user"
                                            id="name" value="{{ old('name') }}" placeholder="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }}">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="designations" class="form-control form-control-user"
                                            id="designations" value="{{ old('designations') }}" placeholder="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','designation')->first()->custom_lang : $websiteLang->where('lang_key','designation')->first()->default_lang }}">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" name="email" class="form-control form-control-user"
                                            id="email" aria-describedby="emailHelp" value="{{ old('email') }}"
                                            placeholder="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','email')->first()->custom_lang : $websiteLang->where('lang_key','email')->first()->default_lang }}">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="phone" class="form-control form-control-user"
                                            id="phone" value="{{ old('phone') }}" placeholder="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','phone')->first()->custom_lang : $websiteLang->where('lang_key','phone')->first()->default_lang }}">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" class="form-control form-control-user"
                                            id="password" value="{{ old('password') }}" placeholder="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','password')->first()->custom_lang : $websiteLang->where('lang_key','password')->first()->default_lang }}">
                                    </div>
                                    <div class="form-group">
                                        <select name="department" id="department" class="form-control select2 form-control-user">
                                            <option value="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','department')->first()->custom_lang : $websiteLang->where('lang_key','department')->first()->default_lang }}</option>
                                            @foreach ($departments as $department)
                                            <option {{ old('department')==$department->id? 'selected' : ''}} value="{{ $department->id }}">{{ ucfirst($department->name) }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <select name="location" id="location" class="form-control select2 form-control-user">
                                            <option value="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','location')->first()->custom_lang : $websiteLang->where('lang_key','location')->first()->default_lang }}</option>
                                            @foreach ($locations as $location)
                                            <option {{ old('location')==$location->id ? 'selected' : ''}} value="{{ $location->id }}">{{ ucfirst($location->location) }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    @if ($setting->allow_captcha==1)
                                    <div class="form-group">
                                        <div class="g-recaptcha" data-sitekey="{{ $setting->captcha_key }}"></div>
                                    </div>
                                    @endif

                                    <button type="submit" class="btn btn-primary btn-user btn-block">
                                        {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','register')->first()->custom_lang : $websiteLang->where('lang_key','register')->first()->default_lang }}
                                    </button>
                                    <hr>
                                </form>
                                <div class="text-center">
                                    <a class="small" href="{{ route('doctor.login') }}">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','existing_account_login_here')->first()->custom_lang : $websiteLang->where('lang_key','existing_account_login_here')->first()->default_lang }}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>
</body>
@include('layouts.admin.footer')
