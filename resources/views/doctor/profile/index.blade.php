@extends('layouts.doctor.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','profile')->first()->custom_lang : $websiteLang->where('lang_key','profile')->first()->default_lang }}</title>
@endsection
@section('doctor-content')
<div class="row">
    <div class="col-md-12">
        <div class="card shadow mb-4">
            <div class="card-body">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                      <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','profile')->first()->custom_lang : $websiteLang->where('lang_key','profile')->first()->default_lang }}</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','change_pass')->first()->custom_lang : $websiteLang->where('lang_key','change_pass')->first()->default_lang }}</a>
                    </li>
                  </ul>
                  <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active mt-5" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <form action="{{ route('doctor.update.profile') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','exist_img')->first()->custom_lang : $websiteLang->where('lang_key','exist_img')->first()->default_lang }}:</label>
                                <img src="{{ url($doctor->image ? $doctor->image:$image->default_profile) }}" alt="doctor image" width="100px" class="img-thumbnail ml-3">
                            </div>
                            <div class="form-group">
                                <label for="image">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','new_img')->first()->custom_lang : $websiteLang->where('lang_key','new_img')->first()->default_lang }}</label>
                                <input type="file" class="form-control-file" name="image" id="image">
                                <input type="hidden" name="old_image" value="{{ $doctor->image }}">
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }}</label>
                                        <input type="text" name="name" class="form-control" id="name" value="{{ ucfirst($doctor->name) }}">

                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="email">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','email')->first()->custom_lang : $websiteLang->where('lang_key','email')->first()->default_lang }}</label>
                                        <input type="text" class="form-control" id="email" value="{{ $doctor->email }}" readonly>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="phone">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','phone')->first()->custom_lang : $websiteLang->where('lang_key','phone')->first()->default_lang }}</label>
                                        <input type="text" name="phone" class="form-control" id="phone" value="{{$doctor->phone }}">

                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="designations">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','designation')->first()->custom_lang : $websiteLang->where('lang_key','designation')->first()->default_lang }}</label>
                                        <input type="text" name="designations" class="form-control" id="designations"  value="{{ $doctor->designations }}">

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="appointment_fee">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','fee')->first()->custom_lang : $websiteLang->where('lang_key','fee')->first()->default_lang }}</label>
                                        <input type="text" name="fee" class="form-control" id="appointment_fee" value="{{ $doctor->fee }}">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="department">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','dep')->first()->custom_lang : $websiteLang->where('lang_key','dep')->first()->default_lang }}</label>
                                        <select class="form-control select2" name="department" id="">
                                            <option value="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','select')->first()->custom_lang : $websiteLang->where('lang_key','select')->first()->default_lang }}</option>
                                            @foreach ($departments as $department)
                                                <option value="{{ $department->id }}" {{ $department->id == $doctor->department->id ? 'selected':'' }}>{{ $department->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="location">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','location')->first()->custom_lang : $websiteLang->where('lang_key','location')->first()->default_lang }}</label>
                                        <select class="form-control select2" name="location" id="">
                                            <option value="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','select')->first()->custom_lang : $websiteLang->where('lang_key','select')->first()->default_lang }}</option>
                                            @foreach ($locations as $location)
                                                <option value="{{ $location->id }}" {{ $location->id == $doctor->location->id ? 'selected':'' }}>{{ $location->location }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="facebook">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','facebook')->first()->custom_lang : $websiteLang->where('lang_key','facebook')->first()->default_lang }}</label>
                                        <input type="text" class="form-control" name="facebook" id="facebook" value="{{ $doctor->facebook }}">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="twitter">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','twitter')->first()->custom_lang : $websiteLang->where('lang_key','twitter')->first()->default_lang }}</label>
                                        <input type="text" class="form-control" name="twitter" id="twitter" value="{{ $doctor->twitter }}">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="linkedin">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','linkedin')->first()->custom_lang : $websiteLang->where('lang_key','linkedin')->first()->default_lang }}</label>
                                        <input type="text" class="form-control" name="linkedin" id="linkedin" value="{{ $doctor->linkedin }}">
                                    </div>
                                </div>



                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="about">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','about')->first()->custom_lang : $websiteLang->where('lang_key','about')->first()->default_lang }}</label>
                                        <textarea name="about" id="about" cols="30" rows="5" class="form-control">{{ $doctor->about }}</textarea>

                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="address">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','address')->first()->custom_lang : $websiteLang->where('lang_key','address')->first()->default_lang }}</label>
                                        <textarea name="address" id="address" class="summernote">{{ $doctor->address }}</textarea>

                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="educations">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','education')->first()->custom_lang : $websiteLang->where('lang_key','education')->first()->default_lang }}</label>
                                        <textarea name="educations" id="educations" class="summernote">{{ $doctor->educations }}</textarea>

                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="experiences">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','experience')->first()->custom_lang : $websiteLang->where('lang_key','experience')->first()->default_lang }}</label>
                                        <textarea name="experiences" id="experiences" class="summernote">{{ $doctor->experience }}</textarea>

                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="qualifications">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','qualification')->first()->custom_lang : $websiteLang->where('lang_key','qualification')->first()->default_lang }}</label>
                                        <textarea name="qualifications" id="qualifications" class="summernote">{{ $doctor->qualifications }}</textarea>

                                    </div>
                                </div>

                            </div>

                            <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }}</button>
                        </form>
                    </div>
                    <div class="tab-pane fade mt-5" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <form action="{{ route('doctor.change.password') }}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="">{{ ap()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','pass')->first()->custom_lang : $websiteLang->where('lang_key','pass')->first()->default_lang }}</label>
                                        <input type="password" name="password" class="form-control">

                                    </div>
                                    <div class="form-group">
                                        <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','confirm_pass')->first()->custom_lang : $websiteLang->where('lang_key','confirm_pass')->first()->default_lang }}</label>
                                        <input type="password" name="password_confirmation" class="form-control">
                                    </div>
                                    <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }}</button>
                                </div>
                            </div>

                        </form>
                    </div>

                  </div>
            </div>
        </div>
    </div>
</div>

@endsection
