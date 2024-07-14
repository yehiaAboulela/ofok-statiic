@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','doctor')->first()->custom_lang : $websiteLang->where('lang_key','doctor')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('admin.doctor.index') }}" class="btn btn-primary"><i class="fas fa-list" aria-hidden="true"></i> {{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','all_doc')->first()->custom_lang : $websiteLang->where('lang_key','all_doc')->first()->default_lang }} </a></h1>
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','doc_form')->first()->custom_lang : $websiteLang->where('lang_key','doc_form')->first()->default_lang }}</h6>
                </div>
                <div class="card-body">

                    <form action="{{ route('admin.doctor.update',$doctor->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('patch')
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }} *</label>
                                    <input type="text" name="name" class="form-control" id="name" value="{{ $doctor->getTranslation('name', 'en') }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name_ar">{{ __('dashboard.doctor.Name In Arabic') }} *</label>
                                    <input type="text" name="name_ar" class="form-control" id="name_ar"  value="{{ $doctor->getTranslation('name', 'ar') }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="email">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','email')->first()->custom_lang : $websiteLang->where('lang_key','email')->first()->default_lang }} *</label>
                                    <input type="text" name="email" class="form-control" id="email" value="{{ $doctor->email }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="phone">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','phone')->first()->custom_lang : $websiteLang->where('lang_key','phone')->first()->default_lang }} *</label>
                                    <input type="text" name="phone" class="form-control" id="phone" value="{{ $doctor->phone }}">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="image">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','img')->first()->custom_lang : $websiteLang->where('lang_key','img')->first()->default_lang }}</label>
                                    <input type="file" name="image" class="form-control" id="image" >
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="image">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','exist_img')->first()->custom_lang : $websiteLang->where('lang_key','exist_img')->first()->default_lang }}</label>
                                    <img src="{{ url($doctor->image ? $doctor->image : $image->default_profile) }}" alt="doctor image" width="120px">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="designations">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','designation')->first()->custom_lang : $websiteLang->where('lang_key','designation')->first()->default_lang }} *</label>
                                    <input type="text" name="designations" class="form-control" id="designations" value="{{ $doctor->getTranslation('designations', 'en') }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="designations_ar">{{ __('dashboard.doctor.Designation In Arabic') }} *</label>
                                    <input type="text" name="designations_ar" class="form-control" id="designations_ar" value="{{ $doctor->getTranslation('designations', 'ar') }}">
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="appointment_fee">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','fee')->first()->custom_lang : $websiteLang->where('lang_key','fee')->first()->default_lang }} *</label>
                                    <input type="text" name="appointment_fee" class="form-control" id="appointment_fee"  value="{{ $doctor->fee }}">
                                </div>
                            </div>




                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="department">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','dep')->first()->custom_lang : $websiteLang->where('lang_key','dep')->first()->default_lang }} *</label>
                                    <select name="department" id="department" class="form-control">
                                        <option value="">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','select_dep')->first()->custom_lang : $websiteLang->where('lang_key','select_dep')->first()->default_lang }}</option>
                                        @foreach ($departments as $item)
                                        <option {{ $doctor->department_id==$item->id? 'selected' : ''}} value="{{ $item->id }}">{{ $item->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="location">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','location')->first()->custom_lang : $websiteLang->where('lang_key','location')->first()->default_lang }} *</label>
                                    <select name="location" id="location" class="form-control">
                                        <option value="">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','select_loc')->first()->custom_lang : $websiteLang->where('lang_key','select_loc')->first()->default_lang }}</option>
                                        @foreach ($locations as $item)
                                        <option {{ $doctor->location_id==$item->id? 'selected' : ''}} value="{{ $item->id }}">{{ ucfirst($item->location) }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="facebook">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','facebook')->first()->custom_lang : $websiteLang->where('lang_key','facebook')->first()->default_lang }}</label>
                                    <input type="text" class="form-control" name="facebook" id="facebook" value="{{ $doctor->facebook }}">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="twitter">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','twitter')->first()->custom_lang : $websiteLang->where('lang_key','twitter')->first()->default_lang }}</label>
                                    <input type="text" class="form-control" name="twitter" id="twitter" value="{{ $doctor->twitter }}">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="linkedin">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','linkedin')->first()->custom_lang : $websiteLang->where('lang_key','linkedin')->first()->default_lang }}</label>
                                    <input type="text" class="form-control" name="linkedin" id="linkedin" value="{{ $doctor->linkedin }}">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="about">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','about')->first()->custom_lang : $websiteLang->where('lang_key','about')->first()->default_lang }}</label>
                                            <textarea name="about" id="about" cols="30" rows="5" class="form-control">{{ $doctor->getTranslation('about', 'en') }}</textarea>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="about">{{ __('dashboard.doctor.About In Arabic') }}</label>
                                            <textarea name="about_ar" id="about_ar" cols="30" rows="5" class="form-control">{{ $doctor->getTranslation('about', 'ar') }}</textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="address">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','address')->first()->custom_lang : $websiteLang->where('lang_key','address')->first()->default_lang }}</label>
                                            <textarea name="address" id="address" class="summernote">{{ $doctor->getTranslation('address', 'en') }}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="address_ar">{{ __('dashboard.doctor.Address In Arabic') }}</label>
                                            <textarea name="address_ar" id="address_ar" class="summernote">{{ $doctor->getTranslation('address', 'ar') }}</textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="educations">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','education')->first()->custom_lang : $websiteLang->where('lang_key','education')->first()->default_lang }}</label>
                                            <textarea name="educations" id="educations" class="summernote">{{ $doctor->getTranslation('educations', 'en') }}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="educations_ar">{{ __('dashboard.doctor.Educations In Arabic') }}</label>
                                            <textarea name="educations_ar" id="educations_ar" class="summernote">{{ $doctor->getTranslation('educations', 'ar') }}</textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="experiences">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','experience')->first()->custom_lang : $websiteLang->where('lang_key','experience')->first()->default_lang }}</label>
                                            <textarea name="experiences" id="experiences" class="summernote">{{ $doctor->getTranslation('experience', 'en') }}</textarea>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="experiences_ar">{{ __('dashboard.doctor.Experiences In Arabic') }}</label>
                                            <textarea name="experiences_ar" id="experiences_ar" class="summernote">{{ $doctor->getTranslation('experience', 'ar') }}</textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="qualifications">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','qualification')->first()->custom_lang : $websiteLang->where('lang_key','qualification')->first()->default_lang }}</label>
                                            <textarea name="qualifications" id="qualifications" class="summernote">{{ $doctor->getTranslation('qualifications', 'en') }}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="qualifications_ar">{{ __('dashboard.doctor.Qualifications In Arabic') }}</label>
                                            <textarea name="qualifications_ar" id="qualifications_ar" class="summernote">{{ $doctor->getTranslation('qualifications', 'en') }}</textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>



                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="status">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }} *</label>
                                    <select name="status" id="status" class="form-control">
                                        <option {{ $doctor->status==1 ? 'selected':'' }} value="1">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}</option>
                                        <option {{ $doctor->status==0 ? 'selected':'' }} value="0">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="show_homepage">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','show_homepage')->first()->custom_lang : $websiteLang->where('lang_key','show_homepage')->first()->default_lang }} *</label>
                                    <select name="show_homepage" id="show_homepage" class="form-control">
                                        <option {{ $doctor->show_homepage==0 ? 'selected':'' }} value="0">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','no')->first()->custom_lang : $websiteLang->where('lang_key','no')->first()->default_lang }}</option>
                                        <option {{ $doctor->show_homepage==1 ? 'selected':'' }}  value="1">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','yes')->first()->custom_lang : $websiteLang->where('lang_key','yes')->first()->default_lang }}</option>
                                    </select>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="seo_title">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','seo_title')->first()->custom_lang : $websiteLang->where('lang_key','seo_title')->first()->default_lang }}</label>
                                    <input type="text" name="seo_title" class="form-control" id="seo_title" value="{{ $doctor->seo_title }}">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="seo_description">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','seo_des')->first()->custom_lang : $websiteLang->where('lang_key','seo_des')->first()->default_lang }}</label>
                                    <textarea name="seo_description" id="seo_description" cols="30" rows="3" class="form-control" >{{ $doctor->seo_description }}</textarea>
                                </div>
                            </div>
                        </div>


                        <button type="submit" class="btn btn-success">{{ app()->currentLocale() =='ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
