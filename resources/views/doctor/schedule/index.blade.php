@extends('layouts.doctor.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','schedule')->first()->custom_lang : $websiteLang->where('lang_key','schedule')->first()->default_lang }}</title>
@endsection
@section('doctor-content')
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','schedule_list')->first()->custom_lang : $websiteLang->where('lang_key','schedule_list')->first()->default_lang }}</h6>
        </div>
        <div class="card-body" id="search-particular-appointment">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','serial')->first()->custom_lang : $websiteLang->where('lang_key','serial')->first()->default_lang }}</th>
                            <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','week_day')->first()->custom_lang : $websiteLang->where('lang_key','week_day')->first()->default_lang }}</th>
                            <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','schedule')->first()->custom_lang : $websiteLang->where('lang_key','schedule')->first()->default_lang }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $old_day_id=0;
                        @endphp
                        @foreach ($doctor->schedules as $index => $schedule)
                        @if ($old_day_id != $schedule->day_id)
                        <tr>
                            <td>{{ ++$index }}</td>
                            <td>{{ $schedule->day->day }}</td>
                            <td>
                                @php
                                    $times=$doctor->schedules->where('day_id',$schedule->day_id);
                                @endphp
                                @foreach ($times as $time)
                                {{ strtoupper($time->start_time) }} - {{ strtoupper($time->end_time) }},
                                <br>
                                @endforeach

                            </td>
                        </tr>
                        @endif
                        @php
                            $old_day_id=$schedule->day_id;
                        @endphp


                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>

@endsection
