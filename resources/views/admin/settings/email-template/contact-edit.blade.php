@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','email_template')->first()->custom_lang : $websiteLang->where('lang_key','email_template')->first()->default_lang }}</title>
@endsection
@section('admin-content')
<a href="{{ route('admin.email.template') }}" class="btn btn-success mb-2"><i class="fas fa-backward" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','go_back')->first()->custom_lang : $websiteLang->where('lang_key','go_back')->first()->default_lang }}</a>
    <div class="row">
        <div class="col-md-8">
            <div class="card shadow mb-4">
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','variable')->first()->custom_lang : $websiteLang->where('lang_key','variable')->first()->default_lang }}</th>
                            <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','meaning')->first()->custom_lang : $websiteLang->where('lang_key','meaning')->first()->default_lang }}</th>
                        </thead>
                        <tbody>
                            <tr>
                                @php
                                    $patient_name="{{name}}";
                                @endphp
                                <td>{{ $patient_name }}</td>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','patient_name')->first()->custom_lang : $websiteLang->where('lang_key','patient_name')->first()->default_lang }}</td>
                            </tr>
                            <tr>
                                @php
                                    $patient_email="{{email}}";
                                @endphp
                                <td>{{ $patient_email }}</td>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','patient_email')->first()->custom_lang : $websiteLang->where('lang_key','patient_email')->first()->default_lang }}</td>
                            </tr>

                            <tr>
                                @php
                                    $patient_phone="{{phone}}";
                                @endphp
                                <td>{{ $patient_phone }}</td>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','patient_phone')->first()->custom_lang : $websiteLang->where('lang_key','patient_phone')->first()->default_lang }}</td>
                            </tr>
                            <tr>
                                @php
                                    $subject="{{subject}}";
                                @endphp
                                <td>{{ $subject }}</td>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','msg_subject')->first()->custom_lang : $websiteLang->where('lang_key','msg_subject')->first()->default_lang }}</td>
                            </tr>

                            <tr>
                                @php
                                    $message="{{message}}";
                                @endphp
                                <td>{{ $message }}</td>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','msg')->first()->custom_lang : $websiteLang->where('lang_key','msg')->first()->default_lang }}</td>
                            </tr>




                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card shadow mb-4">
                <div class="card-body">

                    <form action="{{ route('admin.email.update',$email->id) }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','subject')->first()->custom_lang : $websiteLang->where('lang_key','subject')->first()->default_lang }} <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" value="{{ $email->subject }}" name="subject">
                        </div>
                        <div class="form-group">
                            <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','des')->first()->custom_lang : $websiteLang->where('lang_key','des')->first()->default_lang }} <span class="text-danger">*</span></label>
                            <textarea name="description" cols="30" rows="10" class="form-control summernote">{{ $email->description }}</textarea>

                        </div>

                        <button class="btn btn-success" type="submit">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

