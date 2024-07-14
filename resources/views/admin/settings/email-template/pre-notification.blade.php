@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','email_template')->first()->custom_lang : $websiteLang->where('lang_key','email_template')->first()->default_lang }}</title>
@endsection
@section('admin-content')
<a href="{{ route('admin.email.template') }}" class="btn btn-success mb-2"><i class="fas fa-backward" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','go_back')->first()->custom_lang : $websiteLang->where('lang_key','go_back')->first()->default_lang }}</a>
    <div class="row">
        <div class="col-md-8">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Pre Notification Email</h6>
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','variable')->first()->custom_lang : $websiteLang->where('lang_key','variable')->first()->default_lang }}</th>
                            <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','meaning')->first()->custom_lang : $websiteLang->where('lang_key','meaning')->first()->default_lang }}</th>
                        </thead>
                        <tbody>
                            <tr>
                                @php
                                    $patient_name="{{patient_name}}";
                                @endphp
                                <td>{{ $patient_name }}</td>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','patient_name')->first()->custom_lang : $websiteLang->where('lang_key','patient_name')->first()->default_lang }}</td>
                            </tr>

                            <tr>
                                @php
                                    $schedule_start_time="{{schedule}}";
                                @endphp
                                <td>{{ $schedule_start_time }}</td>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','schedule_time')->first()->custom_lang : $websiteLang->where('lang_key','schedule_time')->first()->default_lang }}</td>
                            </tr>

                            <tr>
                                @php
                                    $schedule_date="{{date}}";
                                @endphp
                                <td>{{ $schedule_date }}</td>
                                <td>S{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','schedule_date')->first()->custom_lang : $websiteLang->where('lang_key','schedule_date')->first()->default_lang }}</td>
                            </tr>

                            <tr>
                                @php
                                    $doctor="{{doctor}}";
                                @endphp
                                <td>{{ $doctor }}</td>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','doctor_name')->first()->custom_lang : $websiteLang->where('lang_key','doctor_name')->first()->default_lang }}</td>
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

