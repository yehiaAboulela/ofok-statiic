@extends('layouts.doctor.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','meeting_history')->first()->custom_lang : $websiteLang->where('lang_key','meeting_history')->first()->default_lang }}</title>
@endsection
@section('doctor-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('doctor.create-zoom-meeting') }}" class="btn btn-primary"><i class="fas fa-plus" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','create')->first()->custom_lang : $websiteLang->where('lang_key','create')->first()->default_lang }} </a></h1>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','meeting_history')->first()->custom_lang : $websiteLang->where('lang_key','meeting_history')->first()->default_lang }}</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th >{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','serial')->first()->custom_lang : $websiteLang->where('lang_key','serial')->first()->default_lang }}</th>
                            <th >{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','patient')->first()->custom_lang : $websiteLang->where('lang_key','patient')->first()->default_lang }}</th>
                            <th >{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','time')->first()->custom_lang : $websiteLang->where('lang_key','time')->first()->default_lang }}</th>
                            <th >{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','duration')->first()->custom_lang : $websiteLang->where('lang_key','duration')->first()->default_lang }}</th>
                            <th >{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','meeting_id')->first()->custom_lang : $websiteLang->where('lang_key','meeting_id')->first()->default_lang }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $i=0;
                        @endphp
                        @foreach ($histories as $index => $meeting)
                        @php
                                $now=date('Y-m-d h:i:A');
                        @endphp
                        @if ($now > date('Y-m-d h:i:A',strtotime($meeting->meeting_time)))
                            <tr>
                                <td>{{ ++$i }}</td>
                                <td>{{ $meeting->user->name }}</td>
                                <td>
                                    {{ date('Y-m-d h:i:A',strtotime($meeting->meeting_time)) }}
                                </td>
                                <td>{{ $meeting->duration }} {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','minute')->first()->custom_lang : $websiteLang->where('lang_key','minute')->first()->default_lang }}</td>
                                <td>{{ $meeting->meeting_id }}</td>
                                </td>
                            </tr>
                        @endif
                        @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
