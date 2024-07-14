@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','create_method')->first()->custom_lang : $websiteLang->where('lang_key','create_method')->first()->default_lang }}</title>
@endsection
@section('admin-content')
<!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('admin.withdraw-method.index') }}" class="btn btn-primary"><i class="fas fa-list" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_method')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_method')->first()->default_lang }} </a></h1>
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','create_withdraw_method')->first()->custom_lang : $websiteLang->where('lang_key','create_withdraw_method')->first()->default_lang }}</h6>
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.withdraw-method.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="name">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }} <span class="text-danger">*</span></label>
                            <input type="text" name="name" class="form-control" id="name" value="{{ old('name') }}">
                        </div>
                        <div class="form-group">
                            <label for="minimum_amount">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','minimum_amount')->first()->custom_lang : $websiteLang->where('lang_key','minimum_amount')->first()->default_lang }} <span class="text-danger">*</span></label>
                            <input type="text" name="minimum_amount" class="form-control" id="minimum_amount" value="{{ old('minimum_amount') }}">

                        </div>
                        <div class="form-group">
                            <label for="maximum_amount">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','maximum_amount')->first()->custom_lang : $websiteLang->where('lang_key','maximum_amount')->first()->default_lang }} <span class="text-danger">*</span></label>
                            <input type="text" name="maximum_amount" class="form-control" id="maximum_amount" value="{{ old('maximum_amount') }}">
                        </div>

                        <div class="form-group">
                            <label for="withdraw_charge">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','charge')->first()->custom_lang : $websiteLang->where('lang_key','charge')->first()->default_lang }} <span class="text-danger">*</span></label>
                            <div class="input-group mb-3">
                                <span class="input-group-text">%</span>
                                <input type="text" name="withdraw_charge" class="form-control" id="withdraw_charge" value="{{ old('withdraw_charge') }}">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="description">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','des')->first()->custom_lang : $websiteLang->where('lang_key','des')->first()->default_lang }} <span class="text-danger">*</span></label>
                            <textarea name="description" id="description" class="summernote" cols="30" rows="3" class="form-control" >{{ old('description') }}</textarea>


                        </div>
                        <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','create')->first()->custom_lang : $websiteLang->where('lang_key','create')->first()->default_lang }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
