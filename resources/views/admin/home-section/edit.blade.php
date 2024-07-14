@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','home_section')->first()->custom_lang : $websiteLang->where('lang_key','home_section')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('admin.home-section.index') }}" class="btn btn-primary"><i class="fas fa-list" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','all_section')->first()->custom_lang : $websiteLang->where('lang_key','all_section')->first()->default_lang }} </a></h1>
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-10">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','home_section')->first()->custom_lang : $websiteLang->where('lang_key','home_section')->first()->default_lang }}</h6>
                </div>
                <div class="card-body">

                   <form action="{{ route('admin.home-section.update',$homeSection->id) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('patch')

                    @if ($homeSection->section_type !=1)
                    <div class="row" id="section-details">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="first_header">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','first_header')->first()->custom_lang : $websiteLang->where('lang_key','first_header')->first()->default_lang }}</label>
                                <input type="text" class="form-control" name="first_header" id="first_header" value="{{ $homeSection->getTranslation('first_header', 'en') }}">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="first_header_ar">{{ __('dashboard.home_section.First Header In Arabic') }}</label>
                                <input type="text" class="form-control" name="first_header_ar" id="first_header_ar" value="{{ $homeSection->getTranslation('first_header', 'ar') }}">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="second_header">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','second_header')->first()->custom_lang : $websiteLang->where('lang_key','second_header')->first()->default_lang }}</label>
                                <input type="text" class="form-control" name="second_header" id="second_header" value="{{ $homeSection->getTranslation('second_header', 'en') }}">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="second_header_ar">{{ __('dashboard.home_section.Second Header In Arabic') }}</label>
                                <input type="text" class="form-control" name="second_header_ar" id="second_header_ar" value="{{ $homeSection->getTranslation('second_header', 'ar') }}">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="description">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','des')->first()->custom_lang : $websiteLang->where('lang_key','des')->first()->default_lang }}</label>
                                <textarea class="form-control" cols="30" rows="5"  id="description" name="description">{{ $homeSection->getTranslation('description', 'en') }}</textarea>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="description_ar">{{ __('dashboard.home_section.Description In Arabic') }}</label>
                                <textarea class="form-control" cols="30" rows="5"  id="description_ar" name="description_ar">{{ $homeSection->getTranslation('description', 'ar') }}</textarea>
                            </div>
                        </div>
                    </div>
                @endif

                    <div class="row">
                        @if ($homeSection->section_type !=2)
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="content_quantity">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','content_qty')->first()->custom_lang : $websiteLang->where('lang_key','content_qty')->first()->default_lang }}</label>
                                    <input type="number" name="content_quantity" id="content_quantity" class="form-control" value="{{ $homeSection->content_quantity }}">
                                </div>
                            </div>
                        @endif

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="show_homepage">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','show_homepage')->first()->custom_lang : $websiteLang->where('lang_key','show_homepage')->first()->default_lang }}</label>
                                <select name="show_homepage" id="show_homepage" class="form-control">
                                    <option {{ $homeSection->show_homepage==1 ? 'selected':'' }} value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','yes')->first()->custom_lang : $websiteLang->where('lang_key','yes')->first()->default_lang }}</option>
                                    <option {{ $homeSection->show_homepage==0 ? 'selected':'' }} value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','no')->first()->custom_lang : $websiteLang->where('lang_key','no')->first()->default_lang }}</option>
                                </select>
                            </div>
                            <input type="hidden" value="{{ $homeSection->section_type }}" name="section_type">
                        </div>

                    </div>


                    <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }}</button>
                </form>
                </div>
            </div>
        </div>
    </div>

@endsection
