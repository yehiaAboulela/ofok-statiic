@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','service')->first()->custom_lang : $websiteLang->where('lang_key','service')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('admin.service.index') }}" class="btn btn-primary"><i class="fas fa-list" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','all_service')->first()->custom_lang : $websiteLang->where('lang_key','all_service')->first()->default_lang }} </a></h1>
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-10">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','service_form')->first()->custom_lang : $websiteLang->where('lang_key','service_form')->first()->default_lang }}</h6>
                </div>
                <div class="card-body">

                   <form action="{{ route('admin.service.update',$service->id) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('patch')
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="header">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','header')->first()->custom_lang : $websiteLang->where('lang_key','header')->first()->default_lang }}</label>
                                <input type="text" class="form-control" name="header" id="header" value="{{ $service->getTranslation('header', 'en') }}">
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="header_ar">{{ __('dashboard.service.Header In Arabic') }}</label>
                                <input type="text" class="form-control" name="header_ar" id="header" value="{{ $service->getTranslation('header', 'ar') }}">
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="icon">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','icon')->first()->custom_lang : $websiteLang->where('lang_key','icon')->first()->default_lang }}</label>
                                <input type="text" class="form-control" name="icon" id="icon" value="{{ $service->icon }}">
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="sort_description">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','short_des')->first()->custom_lang : $websiteLang->where('lang_key','short_des')->first()->default_lang }}</label>
                                <textarea class="form-control" cols="30" rows="5" id="sort_description" name="sort_description">{{ $service->getTranslation('sort_description', 'en') }}</textarea>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="sort_description_ar">{{ __('dashboard.service.Short Description In Arabic') }}</label>
                                <textarea class="form-control" cols="30" rows="5" id="sort_description_ar" name="sort_description_ar">{{ $service->getTranslation('sort_description', 'ar') }}</textarea>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="long_description">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','long_des')->first()->custom_lang : $websiteLang->where('lang_key','long_des')->first()->default_lang }}</label>
                        <textarea class="summernote" id="long_description" name="long_description">{{ $service->getTranslation('long_description', 'en') }}</textarea>
                    </div>

                    <div class="form-group">
                        <label for="long_description_ar">{{ __('dashboard.service.Long Description In Arabic') }}</label>
                        <textarea class="summernote" id="long_description_ar" name="long_description_ar">{{ $service->getTranslation('long_description', 'ar') }}</textarea>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="status">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</label>
                                <select name="status" id="status" class="form-control">
                                    <option {{ $service->status==1 ? 'selected':'' }} value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}</option>
                                    <option  {{ $service->status==0 ? 'selected':'' }} value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="show_home_page">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','show_homepage')->first()->custom_lang : $websiteLang->where('lang_key','show_homepage')->first()->default_lang }}</label>
                                <select name="show_homepage" id="show_home_page" class="form-control">
                                    <option  {{ $service->show_homepage==0 ? 'selected':'' }} value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','no')->first()->custom_lang : $websiteLang->where('lang_key','no')->first()->default_lang }}</option>
                                    <option  {{ $service->show_homepage==1 ? 'selected':'' }} value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','yes')->first()->custom_lang : $websiteLang->where('lang_key','yes')->first()->default_lang }}</option>
                                </select>
                            </div>
                        </div>

                    </div>

                    <div class="form-group">
                        <label for="seo_title">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','seo_title')->first()->custom_lang : $websiteLang->where('lang_key','seo_title')->first()->default_lang }}</label>
                        <input type="text" name="seo_title" class="form-control" id="seo_title" value="{{ $service->seo_title }}">
                    </div>
                    <div class="form-group">
                        <label for="seo_description">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','seo_des')->first()->custom_lang : $websiteLang->where('lang_key','seo_des')->first()->default_lang }}</label>
                        <textarea name="seo_description" id="seo_description" cols="30" rows="3" class="form-control">{{ $service->seo_description }}</textarea>
                    </div>

                    <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }}</button>
                </form>
                </div>
            </div>
        </div>
    </div>

@endsection
