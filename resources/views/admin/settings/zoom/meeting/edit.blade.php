@extends('layouts.doctor.layout')
@section('title')
<title>{{ $websiteLang->where('lang_key','meeting')->first()->custom_lang }}</title>
@endsection
@section('doctor-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('doctor.zoom-meetings') }}" class="btn btn-primary"><i class="fas fa-list" aria-hidden="true"></i> {{ $websiteLang->where('lang_key','meeting_list')->first()->custom_lang }} </a></h1>
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ $websiteLang->where('lang_key','meeting_form')->first()->custom_lang }}</h6>
                </div>
                <div class="card-body">
                    <form action="{{ route('doctor.update-zoom-meeting',$meeting->meeting_id) }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="">{{ $websiteLang->where('lang_key','topic')->first()->custom_lang }}</label>
                            <input type="text" class="form-control" name="topic" value="{{ $meeting->topic }}">
                        </div>
                        <div class="form-group">
                            <label for="">{{ $websiteLang->where('lang_key','start_time')->first()->custom_lang }}</label>
                            @php
                                $date=date('Y-m-d h:i:s',strtotime($meeting->start_time));
                            @endphp
                            <input id="dateandtimepicker" class="form-control" name="start_time" value="{{ $date }}">
                        </div>

                        <div class="form-group">
                            <label for="">{{ $websiteLang->where('lang_key','duration')->first()->custom_lang }}</label>

                            <input type="number" class="form-control" name="duration" value="{{ $meeting->duration }}">
                        </div>

                        <div class="form-group">
                            <label for="">{{ $websiteLang->where('lang_key','patient')->first()->custom_lang }}</label>
                            <select name="patient" class="form-control select2" id="patient">
                                <option value="">{{ $websiteLang->where('lang_key','select_patient')->first()->custom_lang }}</option>
                                <option value="-1">{{ $websiteLang->where('lang_key','all_patient')->first()->custom_lang }}</option>
                                @foreach ($users as $user)
                                    <option value="{{ $user->id }}">{{ $user->name }}</option>
                                @endforeach
                            </select>
                        </div>


                        <button class="btn btn-primary" type="submit"> {{ $websiteLang->where('lang_key','update')->first()->custom_lang }}</button>
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
