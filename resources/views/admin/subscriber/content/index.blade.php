@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','sub_content')->first()->custom_lang : $websiteLang->where('lang_key','sub_content')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','sub_content')->first()->custom_lang : $websiteLang->where('lang_key','sub_content')->first()->default_lang }}</h6>
                </div>
                <div class="card-body">

                    <form action="{{ route('admin.subscriber.content.update',$setting->id) }}" method="POST">
                        @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="subscribe_heading">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','header')->first()->custom_lang : $websiteLang->where('lang_key','header')->first()->default_lang }}</label>
                                    <input type="text" name="subscribe_heading" class="form-control" value="{{ $setting->getTranslation('subscribe_heading', 'en') }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="subscribe_heading_ar">{{ __('dashboard.subscribe_content.Header In Arabic') }}</label>
                                    <input type="text" name="subscribe_heading_ar" class="form-control" value="{{ $setting->getTranslation('subscribe_heading', 'ar') }}">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="subscribe_description">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','des')->first()->custom_lang : $websiteLang->where('lang_key','des')->first()->default_lang }}</label>
                            <textarea name="subscribe_description" id="" cols="30" rows="5" class="form-control">{{ $setting->getTranslation('subscribe_description', 'en') }}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="subscribe_description_ar">{{ __('dashboard.subscribe_content.Description In Arabic') }}</label>
                            <textarea name="subscribe_description_ar" id="" cols="30" rows="5" class="form-control">{{ $setting->getTranslation('subscribe_description', 'ar') }}</textarea>
                        </div>

                        <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
