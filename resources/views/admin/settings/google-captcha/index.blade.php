@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','google_captcha')->first()->custom_lang : $websiteLang->where('lang_key','google_captcha')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','google_captcha')->first()->custom_lang : $websiteLang->where('lang_key','google_captcha')->first()->default_lang }}</h6>
                </div>
                <div class="card-body">

                    <form action="{{ route('admin.update.captcha.setting') }}" method="POST">
                        @csrf

                        <div class="form-group">
                            <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','allow_captcha')->first()->custom_lang : $websiteLang->where('lang_key','allow_captcha')->first()->default_lang }}</label>
                            <select name="allow_captcha" id="" class="form-control">
                                <option {{ $setting->allow_captcha==1 ? 'selected':'' }} value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','yes')->first()->custom_lang : $websiteLang->where('lang_key','yes')->first()->default_lang }}</option>
                                <option {{ $setting->allow_captcha==0 ? 'selected':'' }} value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','no')->first()->custom_lang : $websiteLang->where('lang_key','no')->first()->default_lang }}</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="captcha_key">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','recaptcha_site_key')->first()->custom_lang : $websiteLang->where('lang_key','recaptcha_site_key')->first()->default_lang }}</label>
                            <input type="text" class="form-control" name="captcha_key" id="captcha_key" value="{{ $setting->captcha_key }}">
                        </div>



                        <div class="form-group">
                            <label for="captcha_secret">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','recaptcha_secret_key')->first()->custom_lang : $websiteLang->where('lang_key','recaptcha_secret_key')->first()->default_lang }}</label>
                            <input type="text" class="form-control" name="captcha_secret" id="captcha_secret" value="{{ $setting->captcha_secret }}">
                        </div>


                        <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
