@extends('layouts.patient.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','my_profile')->first()->custom_lang : $websiteLang->where('lang_key','my_profile')->first()->default_lang }}</title>
@endsection
@section('patient-content')


<!--Banner Start-->
<div class="banner-area flex" style="background-image:url({{ $banner->profile ? url($banner->profile) : '' }});">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="banner-text">
                    <h1>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','my_profile')->first()->custom_lang : $websiteLang->where('lang_key','my_profile')->first()->default_lang }}</h1>
                    <ul>
                        <li><a href="{{ url('/') }}">{{ $navigation->home }}</a></li>
                        <li><span>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','my_profile')->first()->custom_lang : $websiteLang->where('lang_key','my_profile')->first()->default_lang }}</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Banner End-->

<!--Dashboard Start-->
<div class="dashboard-area pt_70 pb_70">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                @include('patient.profile.sidebar')
            </div>
            <div class="col-lg-9">
                <div class="detail-dashboard add-form">
                    <h2 class="d-headline">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','my_profile')->first()->custom_lang : $websiteLang->where('lang_key','my_profile')->first()->default_lang }}</h2>
                    <form action="{{ route('patient.update.profile') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="form-row row">
                            <div class="form-group col-md-6">
                                <label for="name">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }} <span>*</span></label>
                                <input type="text" class="form-control" id="name" name="name" value="{{ $user->name }}">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="email">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','email')->first()->custom_lang : $websiteLang->where('lang_key','email')->first()->default_lang }} <span>*</span></label>
                                <input type="text" class="form-control" id="email" name="email"  value="{{ $user->email }}" readonly>

                            </div>
                            <div class="form-group col-md-6">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','phone')->first()->custom_lang : $websiteLang->where('lang_key','phone')->first()->default_lang }} <span>*</span></label>
                                <input type="text" class="form-control" name="phone" value="{{ $user->phone }}">

                            </div>
                            <div class="form-group col-md-6">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','guardian_name')->first()->custom_lang : $websiteLang->where('lang_key','guardian_name')->first()->default_lang }}</label>
                                <input type="text" class="form-control" name="guardian_name"  value="{{ $user->guardian_name }}">

                            </div>
                            <div class="form-group col-md-6">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','guardian_phone')->first()->custom_lang : $websiteLang->where('lang_key','guardian_phone')->first()->default_lang }}</label>
                                <input type="text" class="form-control" name="guardian_phone"  value="{{ $user->guardian_phone }}">

                            </div>
                            <div class="form-group col-md-6">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','age')->first()->custom_lang : $websiteLang->where('lang_key','age')->first()->default_lang }}<span>*</span></label>
                                <input type="number" class="form-control" name="age" value="{{ $user->age }}">

                            </div>
                            <div class="form-group col-md-6">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','occuupation')->first()->custom_lang : $websiteLang->where('lang_key','occuupation')->first()->default_lang }}<span>*</span></label>
                                <input type="text" class="form-control" name="occupation"  value="{{ $user->occupation }}">

                            </div>

                            <div class="form-group col-md-6 option-item">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','gender')->first()->custom_lang : $websiteLang->where('lang_key','gender')->first()->default_lang }} <span>*</span></label>
                                <select class="form-control" name="gender">
                                    <option value="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','select_gender')->first()->custom_lang : $websiteLang->where('lang_key','select_gender')->first()->default_lang }}</option>
                                    <option {{ $user->gender=='male' ? 'selected':'' }} value="male">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','male')->first()->custom_lang : $websiteLang->where('lang_key','male')->first()->default_lang }}</option>
                                    <option {{ $user->gender=='female' ? 'selected':'' }} value="female">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','female')->first()->custom_lang : $websiteLang->where('lang_key','female')->first()->default_lang }}</option>
                                    <option {{ $user->gender=='others' ? 'selected':''  }} value="others">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','others')->first()->custom_lang : $websiteLang->where('lang_key','others')->first()->default_lang}}</option>
                                </select>

                            </div>
                            <div class="form-group col-md-6">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','address')->first()->custom_lang : $websiteLang->where('lang_key','address')->first()->default_lang }} <span>*</span></label>
                                <input type="text" class="form-control" name="address" value="{{ $user->address }}">

                            </div>

                            <div class="form-group col-md-6 option-item">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','country')->first()->custom_lang : $websiteLang->where('lang_key','country')->first()->default_lang }} <span>*</span></label>
                                <input type="text" name="country" class="form-control" value="{{ $user->country }}">

                            </div>
                            <div class="form-group col-md-6 option-item">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','city')->first()->custom_lang : $websiteLang->where('lang_key','city')->first()->default_lang }} <span>*</span></label>
                                <input type="text" name="city" placeholder="City" class="form-control" value="{{ $user->city }}">

                            </div>

                            <div class="form-group col-md-6">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','photo')->first()->custom_lang : $websiteLang->where('lang_key','photo')->first()->default_lang }}</label>
                                <input type="file" class="form-control-file" name="image">
                                <input type="hidden" name="old_image" value="{{ $user->image }}">

                            </div>

                            <div class="form-group col-md-6 option-item">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','dob')->first()->custom_lang : $websiteLang->where('lang_key','dob')->first()->default_lang }} </label>
                                <input type="text" class="form-control datepicker2" name="date_of_birth" value="{{ $user->date_of_birth }}">
                            </div>
                            <div class="form-group col-md-6 option-item">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','weight')->first()->custom_lang : $websiteLang->where('lang_key','weight')->first()->default_lang }}</label>
                                <input type="text" class="form-control" name="weight" value="{{ $user->weight }}">
                            </div>
                            <div class="form-group col-md-6 option-item">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','height')->first()->custom_lang : $websiteLang->where('lang_key','height')->first()->default_lang }}</label>
                                <input type="text" class="form-control" name="height" value="{{ $user->height }}">
                            </div>
                            <div class="form-group col-md-6 option-item">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','helth_ins_num')->first()->custom_lang : $websiteLang->where('lang_key','helth_ins_num')->first()->default_lang }}</label>
                                <input type="text" class="form-control" name="health_insurance_number" value="{{ $user->health_insurance_number }}">
                            </div>
                            <div class="form-group col-md-6 option-item">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','helth_card_num')->first()->custom_lang : $websiteLang->where('lang_key','helth_card_num')->first()->default_lang }}</label>
                                <input type="text" class="form-control" name="health_card_number" value="{{ $user->health_card_number }}">
                            </div>
                            <div class="form-group col-md-6 option-item">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','helth_card_pro')->first()->custom_lang : $websiteLang->where('lang_key','helth_card_pro')->first()->default_lang}}</label>
                                <input type="text" class="form-control" name="health_card_provider" value="{{ $user->health_card_provider }}">
                            </div>
                            <div class="form-group col-md-6 option-item">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','blood_group')->first()->custom_lang : $websiteLang->where('lang_key','blood_group')->first()->default_lang }}</label>
                                <input type="text" class="form-control" name="blood_group" value="{{ $user->blood_group }}">
                            </div>
                            <div class="form-group col-md-6 option-item">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','disabilities')->first()->custom_lang : $websiteLang->where('lang_key','disabilities')->first()->default_lang }}</label>
                                <input type="text" class="form-control" name="disabilities" value="{{ $user->disabilities }}">
                            </div>
                             <!-- HTML -->


                            <div class="form-group col-md-12">
                                <button type="submit" class="btn btn-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }}</button>
                            </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
<!--Dashboard End-->
@endsection
