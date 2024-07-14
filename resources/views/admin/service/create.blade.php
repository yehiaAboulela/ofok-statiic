@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','service')->first()->custom_lang : $websiteLang->where('lang_key','service')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('admin.service.index') }}" class="btn btn-primary"><i class="fas fa-list" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','all_service')->first()->custom_lang : $websiteLang->where('lang_key','all_service')->first()->default_lang }} </a></h1>
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','service_form')->first()->custom_lang : $websiteLang->where('lang_key','service_form')->first()->default_lang }}</h6>
                </div>
                <div class="card-body">

                    <form action="{{ route('admin.service.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="header">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','header')->first()->custom_lang : $websiteLang->where('lang_key','header')->first()->default_lang }}</label>
                                    <input type="text" class="form-control" name="header" id="header" >
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="header_ar">{{ __('dashboard.service.Header In Arabic') }}</label>
                                    <input type="text" class="form-control" name="header_ar" id="header">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="icon">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','icon')->first()->custom_lang : $websiteLang->where('lang_key','icon')->first()->default_lang }}</label>
                                    <input type="text" class="form-control" name="icon" id="icon" placeholder="fas fa-trash">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="images">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','images')->first()->custom_lang : $websiteLang->where('lang_key','images')->first()->default_lang }}</label>
                                    <input type="file" multiple class="form-control" name="images[]" id="images">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="sort_description">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','short_des')->first()->custom_lang : $websiteLang->where('lang_key','short_des')->first()->default_lang }}</label>
                                    <textarea class="form-control" cols="30" rows="5" id="sort_description" name="sort_description"></textarea>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="sort_description_ar">{{ __('dashboard.service.Short Description In Arabic') }}</label>
                                    <textarea class="form-control" cols="30" rows="5" id="sort_description_ar" name="sort_description_ar"></textarea>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="long_description">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','long_des')->first()->custom_lang : $websiteLang->where('lang_key','long_des')->first()->default_lang }}</label>
                            <textarea class="summernote" id="long_description" name="long_description"></textarea>
                        </div>

                        <div class="form-group">
                            <label for="long_description_ar">{{ __('dashboard.service.Long Description In Arabic') }}</label>
                            <textarea class="summernote" id="long_description_ar" name="long_description_ar"></textarea>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="status">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</label>
                                    <select name="status" id="status" class="form-control">
                                        <option value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}</option>
                                        <option value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="show_home_page">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','show_homepage')->first()->custom_lang : $websiteLang->where('lang_key','show_homepage')->first()->default_lang }}</label>
                                    <select name="show_homepage" id="show_home_page" class="form-control">
                                        <option value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','no')->first()->custom_lang : $websiteLang->where('lang_key','no')->first()->default_lang }}</option>
                                        <option value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','yes')->first()->custom_lang : $websiteLang->where('lang_key','yes')->first()->default_lang }}</option>
                                    </select>
                                </div>
                            </div>

                        </div>

                        <div class="form-group">
                            <label for="seo_title">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','seo_title')->first()->custom_lang : $websiteLang->where('lang_key','seo_title')->first()->default_lang }}</label>
                            <input type="text" name="seo_title" class="form-control" id="seo_title">
                        </div>
                        <div class="form-group">
                            <label for="seo_description">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','seo_des')->first()->custom_lang : $websiteLang->where('lang_key','seo_des')->first()->default_lang }}</label>
                            <textarea name="seo_description" id="seo_description" cols="30" rows="3" class="form-control"></textarea>
                        </div>

                        <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','save')->first()->custom_lang : $websiteLang->where('lang_key','save')->first()->default_lang }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection