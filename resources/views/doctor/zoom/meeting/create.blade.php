@extends('layouts.doctor.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','meeting')->first()->custom_lang : $websiteLang->where('lang_key','meeting')->first()->default_lang }}</title>
@endsection
@section('doctor-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('doctor.zoom-meetings') }}" class="btn btn-primary"><i class="fas fa-list" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','meeting_list')->first()->custom_lang : $websiteLang->where('lang_key','meeting_list')->first()->default_lang }} </a></h1>
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','meeting_form')->first()->custom_lang : $websiteLang->where('lang_key','meeting_form')->first()->default_lang }}</h6>
                </div>
                <div class="card-body">
                    <form action="{{ route('doctor.store-zoom-meeting') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','topic')->first()->custom_lang : $websiteLang->where('lang_key','topic')->first()->default_lang }}</label>
                            <input type="text" class="form-control" name="topic" value="{{ old('topic') }}">
                        </div>
                        <div class="form-group">
                            <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','start_time')->first()->custom_lang : $websiteLang->where('lang_key','start_time')->first()->default_lang }}</label>
                            <input id="dateandtimepicker" class="form-control" name="start_time" value="{{ old('start_time') }}">
                        </div>


                        <div class="form-group">
                            <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','duration')->first()->custom_lang : $websiteLang->where('lang_key','duration')->first()->default_lang }}</label>
                            <input type="number" class="form-control" name="duration" value="{{ old('duration') }}">
                        </div>


                        <div class="form-group">
                            <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','patient')->first()->custom_lang : $websiteLang->where('lang_key','patient')->first()->default_lang }}</label>
                            <select name="patient" class="form-control select2" id="patient">
                                <option value="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','select_patient')->first()->custom_lang : $websiteLang->where('lang_key','select_patient')->first()->default_lang }}</option>
                                <option value="-1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','all_patient')->first()->custom_lang : $websiteLang->where('lang_key','all_patient')->first()->default_lang }}</option>
                                @foreach ($users as $user)
                                    <option value="{{ $user->id }}">{{ $user->name }}</option>
                                @endforeach
                            </select>
                        </div>


                        <button class="btn btn-primary" type="submit"> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','save')->first()->custom_lang : $websiteLang->where('lang_key','save')->first()->default_lang }}</button>
                    </form>
                </div>
            </div>

        </div>
    </div>


    <script>
        $("#dateandtimepicker").datetimepicker({
            format: 'Y-m-d H:i:s',
            formatTime: 'H:i:s',
            formatDate: 'Y-m-d',
            step: 5,
            minDate:0,
            minTime:0
        })
    </script>

@endsection
