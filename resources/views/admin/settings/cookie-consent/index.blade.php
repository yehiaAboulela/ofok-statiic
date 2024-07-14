@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','cookie_consent')->first()->custom_lang : $websiteLang->where('lang_key','cookie_consent')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','cookie_consent')->first()->custom_lang : $websiteLang->where('lang_key','cookie_consent')->first()->default_lang }}</h6>
                </div>
                <div class="card-body">

                    <form action="{{ route('admin.update.cookie.consent.setting') }}" method="POST">
                        @csrf

                        <div class="form-group">
                            <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','allow_consent_modal')->first()->custom_lang : $websiteLang->where('lang_key','allow_consent_modal')->first()->default_lang }}</label>
                            <select name="allow_cookie_consent" id="" class="form-control">
                                <option {{ $setting->allow_cookie_consent==1 ? 'selected':'' }} value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','yes')->first()->custom_lang : $websiteLang->where('lang_key','yes')->first()->default_lang }}</option>
                                <option {{ $setting->allow_cookie_consent==0 ? 'selected':'' }} value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','no')->first()->custom_lang : $websiteLang->where('lang_key','no')->first()->default_lang }}</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="cookie_text">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','cookie_text')->first()->custom_lang : $websiteLang->where('lang_key','cookie_text')->first()->default_lang }}</label>
                            <textarea class="form-control" name="cookie_text" id="cookie_text" cols="30" rows="5">{{ $setting->getTranslation('cookie_text', 'en') }}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="cookie_text_ar">{{ __('dashboard.cookies.Cookie Text In Arabic') }}</label>
                            <textarea class="form-control" name="cookie_text_ar" id="cookie_text_ar" cols="30" rows="5">{{ $setting->getTranslation('cookie_text', 'ar') }}</textarea>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="cookie_button_text">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','button_text')->first()->custom_lang : $websiteLang->where('lang_key','button_text')->first()->default_lang }}</label>
                                    <input type="text" name="cookie_button_text" value="{{ $setting->getTranslation('cookie_button_text', 'en') }}" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="cookie_button_text_ar">{{ __('dashboard.cookies.Button Text In Arabic') }}</label>
                                    <input type="text" name="cookie_button_text_ar" value="{{ $setting->getTranslation('cookie_button_text', 'ar') }}" class="form-control">
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
