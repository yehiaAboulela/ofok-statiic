@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','schedule')->first()->custom_lang : $websiteLang->where('lang_key','schedule')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('admin.schedule.index') }}" class="btn btn-primary"><i class="fas fa-list" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','all_schedule')->first()->custom_lang : $websiteLang->where('lang_key','all_schedule')->first()->default_lang }} </a></h1>
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','schedule_form')->first()->custom_lang : $websiteLang->where('lang_key','schedule_form')->first()->default_lang }}</h6>
                </div>
                <div class="card-body">

                    <form action="{{ route('admin.schedule.update',$schedule->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('patch')
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="doctor">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','doctor')->first()->custom_lang : $websiteLang->where('lang_key','doctor')->first()->default_lang }}</label>
                                    <select name="doctor" id="doctor" class="form-control selectoption select2">
                                        <option value="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','select_doc')->first()->custom_lang : $websiteLang->where('lang_key','select_doc')->first()->default_lang }}</option>
                                        @foreach ($doctors as $item)
                                        <option {{ $schedule->doctor_id==$item->id? 'selected' : ''}} value="{{ $item->id }}">{{ ucfirst($item->name) }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="day">Day</label>
                                    <select name="day" id="day" class="form-control selectoption">
                                        <option value="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','select_day')->first()->custom_lang : $websiteLang->where('lang_key','select_day')->first()->default_lang }}</option>
                                        @foreach ($days as $item)
                                        <option {{ $schedule->day_id==$item->id? 'selected' : ''}} value="{{ $item->id }}">{{ ucfirst($item->day) }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="start_time">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','start_time')->first()->custom_lang : $websiteLang->where('lang_key','start_time')->first()->default_lang }}</label>
                                    <input type="text" name="start_time" class="form-control timepicker" value="{{ $schedule->start_time }}">
                                </div>

                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="end_time">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','end_time')->first()->custom_lang : $websiteLang->where('lang_key','end_time')->first()->default_lang }}</label>
                                    <input type="text" name="end_time" class="form-control timepicker2" value="{{ $schedule->end_time }}">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="quantity">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','sit_qty')->first()->custom_lang : $websiteLang->where('lang_key','sit_qty')->first()->default_lang }}</label>
                                    <input type="number" class="form-control" name="quantity" value="{{ $schedule->quantity }}">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="status">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</label>
                                    <select name="status" id="status" class="form-control selectoption">
                                        <option {{ $schedule->status==1 ? 'selected' :'' }} value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}</option>
                                        <option {{ $schedule->status==0 ? 'selected' :'' }} value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}</option>
                                    </select>
                                </div>
                            </div>

                        </div>
                        <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script>
	(function($) {
    "use strict";
        $(document).ready(function() {
            $('.timepicker').timepicker({
                timeFormat: 'h:mm p',
                interval: 60,
                minTime: '1',
                maxTime: '11:00pm',
                defaultTime: '{{ $schedule->start_time }}',
                startTime: '10:00',
                dynamic: false,
                dropdown: true,
                scrollbar: true
            });

            $('.timepicker2').timepicker({
                timeFormat: 'h:mm p',
                interval: 60,
                minTime: '1',
                maxTime: '11:00pm',
                defaultTime: '{{ $schedule->end_time }}',
                startTime: '10:00',
                dynamic: false,
                dropdown: true,
                scrollbar: true
            });

        });
	})(jQuery);
    </script>
@endsection
