@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','manage_slider_content')->first()->custom_lang : $websiteLang->where('lang_key','manage_slider_content')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','manage_slider_content')->first()->custom_lang : $websiteLang->where('lang_key','manage_slider_content')->first()->default_lang }}</h6>
                </div>
                <div class="card-body">

                    <form action="{{ route('admin.slider.content.update',$content->id) }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','header')->first()->custom_lang : $websiteLang->where('lang_key','header')->first()->default_lang }}</label>
                            <input type="text" name="slider_heading" class="form-control" value="{{ $content->slider_heading }}">
                        </div>

                        <div class="form-group">
                            <label for="">{{ trans('slider.Header In Arabic') }}</label>
                            <input type="text" name="slider_heading_ar" class="form-control" value="{{ $content->getTranslation('slider_heading', 'ar') }}">
                        </div>

                        <div class="form-group">
                            <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','des')->first()->custom_lang : $websiteLang->where('lang_key','des')->first()->default_lang }}</label>
                            <textarea name="slider_description" id="" cols="30" rows="5" class="form-control">{{ $content->slider_description }}</textarea>
                        </div>

                        <div class="form-group">
                            <label for="">{{ trans('slider.Description In Arabic') }}</label>
                            <textarea name="slider_description_ar" id="" cols="30" rows="5" class="form-control">{{ $content->getTranslation('slider_description', 'ar') }}</textarea>
                        </div>

                        <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
