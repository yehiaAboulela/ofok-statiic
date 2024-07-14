@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','dep')->first()->custom_lang : $websiteLang->where('lang_key','unit')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('admin.unit.index') }}" class="btn btn-primary"><i class="fas fa-list" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','all_unit')->first()->custom_lang : $websiteLang->where('lang_key','all_unit')->first()->default_lang }} </a></h1>
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-10">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','all_unit')->first()->custom_lang : $websiteLang->where('lang_key','all_unit')->first()->default_lang }}</h6>
                </div>
                <div class="card-body">

                    <form action="{{ route('admin.unit.update',$unit->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('patch')

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }}</label>
                                    <input type="text" class="form-control" name="name" id="name" value="{{ $unit->getTranslation('name', 'en') }}">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name_ar">{{ __('dashboard.department.Name In Arabic') }}</label>
                                    <input type="text" class="form-control" name="name_ar" id="name_ar" value="{{ $unit->getTranslation('name', 'ar') }}">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="thumbnail_image">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','thumb_img')->first()->custom_lang : $websiteLang->where('lang_key','thumb_img')->first()->default_lang }}</label>
                                    <input type="file" class="form-control" name="thumbnail_image" id="thumbnail_image">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="thumbnail_image">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','exist_img')->first()->custom_lang : $websiteLang->where('lang_key','exist_img')->first()->default_lang }}</label>
                                    <img src="{{ url($unit->thumbnail_image) }}" alt="Department thumbnail" width="120px">
                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="description">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','des')->first()->custom_lang : $websiteLang->where('lang_key','des')->first()->default_lang }}</label>
                            <textarea class="summernote" id="description" name="description">{{ $unit->getTranslation('description', 'en') }}</textarea>
                        </div>

                        <div class="form-group">
                            <label for="description_ar">{{ __('dashboard.department.Description In Arabic') }}</label>
                            <textarea class="summernote" id="description_ar" name="description_ar">{{ $unit->getTranslation('description', 'ar') }}</textarea>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="status">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</label>
                                    <select name="status" id="status" class="form-control">
                                        <option {{ $unit->status ==1 ? 'selected' :'' }} value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}</option>
                                        <option {{ $unit->status ==0 ? 'selected' :'' }} value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="show_home_page">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','show_homepage')->first()->custom_lang : $websiteLang->where('lang_key','show_homepage')->first()->default_lang }}</label>
                                    <select name="show_homepage" id="show_home_page" class="form-control">
                                        <option {{ $unit->show_homepage ==0 ? 'selected' :'' }} value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','no')->first()->custom_lang : $websiteLang->where('lang_key','no')->first()->default_lang }}</option>
                                        <option {{ $unit->show_homepage ==1 ? 'selected' :'' }} value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','yes')->first()->custom_lang : $websiteLang->where('lang_key','yes')->first()->default_lang }}</option>
                                    </select>
                                </div>
                            </div>

                        </div>

                        <div class="form-group">
                            <label for="seo_title">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','seo_title')->first()->custom_lang : $websiteLang->where('lang_key','seo_title')->first()->default_lang }}</label>
                            <input type="text" name="seo_title" class="form-control" id="seo_title" value="{{ $unit->seo_title }}">
                        </div>
                        <div class="form-group">
                            <label for="seo_description">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','seo_des')->first()->custom_lang : $websiteLang->where('lang_key','seo_des')->first()->default_lang }}</label>
                            <textarea name="seo_description" id="seo_description" cols="30" rows="3" class="form-control" >{{ $unit->seo_description }}</textarea>
                        </div>


                        <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
