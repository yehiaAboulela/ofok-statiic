@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','theme_color')->first()->custom_lang : $websiteLang->where('lang_key','theme_color')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-8">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','theme_color')->first()->custom_lang : $websiteLang->where('lang_key','theme_color')->first()->default_lang }}</h6>
                </div>
                <div class="card-body">

                    <form action="{{ route('admin.theme-color.update') }}" method="POST">
                        @csrf

                        <div class="form-group">
                            <label for="theme_color_one">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','color_one')->first()->custom_lang : $websiteLang->where('lang_key','color_one')->first()->default_lang }} : </label>
                            <input type="color" id="theme_color_one" name="theme_one" value="{{ $setting->theme_one }}">
                        </div>
                        <div class="form-group">
                            <label for="theme_color_two">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','color_two')->first()->custom_lang : $websiteLang->where('lang_key','color_two')->first()->default_lang }} : </label>
                            <input type="color" id="theme_color_two" name="theme_two" value="{{ $setting->theme_two }}">
                        </div>


                        <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
