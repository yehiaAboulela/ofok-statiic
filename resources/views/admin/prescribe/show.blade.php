@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','prescription')->first()->custom_lang : $websiteLang->where('lang_key','prescription')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- Appointment Details -->
    <div class="prescribe">
        <div class="card shadow mb-4">
            <div class="card-body">

                <div class="prescription">


                    <div class="top">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="logo"><img src="{{ url($setting->logo) }}" alt=""></div>
                                <div class="address">
                                    {{ $contact->address }}
                                </div>
                                <div class="phone">
                                    {{ $setting->prescription_phone }}
                                </div>
                                <div class="email">
                                    {{ $setting->prescription_email }}
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="right">
                                    <h2>{{ $appointment->doctor->name }}</h2>
                                    <p>
                                        {{ $appointment->doctor->designations }}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="patient-info">
                        <div class="row">
                            <div class="col-md-6">
                                {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','patient_name')->first()->custom_lang : $websiteLang->where('lang_key','patient_name')->first()->default_lang }}: {{ $appointment->user->name }}
                            </div>
                            <div class="col-md-3">
                                {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','age')->first()->custom_lang : $websiteLang->where('lang_key','age')->first()->default_lang }}: {{ $appointment->user->age }} Years
                            </div>
                            <div class="col-md-3 text-right">
                                {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','date')->first()->custom_lang : $websiteLang->where('lang_key','date')->first()->default_lang }}: {{ date('m-d-Y',strtotime($appointment->date)) }}
                            </div>
                        </div>
                    </div>


                    <div class="main-section">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="problem">
                                    <h2>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','problem')->first()->custom_lang : $websiteLang->where('lang_key','problem')->first()->default_lang }}</h2>
                                    <p>
                                        {!! clean(nl2br(e($appointment->problem_description))) !!}
                                    </p>
                                </div>
                                @if ($appointment->advice)
                                @if ($appointment->advice->test_description != null)
                                    <div class="test">
                                        <h2>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','test')->first()->custom_lang : $websiteLang->where('lang_key','test')->first()->default_lang }}</h2>
                                        <p>
                                            {!! clean(nl2br(e($appointment->advice->test_description))) !!}
                                        </p>
                                    </div>
                                @endif
                                @endif
                            </div>
                            <div class="col-md-9">
                                <div class="medicine">
                                    <div class="rx">R<span>x</span></div>
                                    <div class="list">
                                        <ol>
                                            @foreach ($appointment->prescribes as $prescribe)
                                            <li>
                                                <div class="full">
                                                    <div class="l">
                                                        {{ $prescribe->medicine_name }} <br> {{ $prescribe->dosage }} ({{ $prescribe->time }})
                                                    </div>
                                                    <div class="r">
                                                        {{ $prescribe->number_of_day }} {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','days')->first()->custom_lang : $websiteLang->where('lang_key','days')->first()->default_lang }}
                                                    </div>
                                                </div>
                                            </li>
                                            @endforeach

                                        </ol>
                                    </div>

                                    @if ($appointment->advice)
                                        @if ($appointment->advice->test_description != null)
                                        <div class="advice">
                                            <h2>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','advice')->first()->custom_lang : $websiteLang->where('lang_key','advice')->first()->default_lang }}</h2>
                                            <p>
                                                {!! clean(nl2br(e($appointment->advice->advice))) !!}
                                            </p>
                                        </div>
                                        @endif
                                    @endif


                                </div>




                            </div>
                        </div>
                    </div>

                    <div class="footer">
                        <h2>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','signature')->first()->custom_lang : $websiteLang->where('lang_key','signature')->first()->default_lang }}</h2>
                        <p>
                            {{ $appointment->doctor->name }}<br> {{ $appointment->doctor->designations }}
                        </p>
                    </div>


                </div>

            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <button type="button" class="btn btn-success ml-3 print-btn" onclick="window.print()">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','print')->first()->custom_lang : $websiteLang->where('lang_key','print')->first()->default_lang }}</button>
        </div>
    </div>
    <style>
        @media print {
            .navbar-nav,
            .print-btn,
            .print-footer {
                display:none!important;
            }
        }
    </style>
@endsection

