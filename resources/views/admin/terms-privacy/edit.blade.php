@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','term_and_cond')->first()->custom_lang : $websiteLang->where('lang_key','term_and_cond')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-body">

                    <form action="{{ route('admin.terms-privacy.update',$conditionPrivacy->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('patch')
                        <div class="form-group">
                            <label for="terms_condition">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','term_and_cond')->first()->custom_lang : $websiteLang->where('lang_key','term_and_cond')->first()->default_lang }}</label>
                            <textarea class="summernote" id="terms_condition" name="terms_condition">{{ $conditionPrivacy->terms_condition }}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="privacy_policy">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','privacy_policy')->first()->custom_lang : $websiteLang->where('lang_key','privacy_policy')->first()->default_lang }}</label>
                            <textarea class="summernote" id="privacy_policy" name="privacy_policy">{{ $conditionPrivacy->privacy_policy }}</textarea>
                        </div>

                        <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }} </button>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
