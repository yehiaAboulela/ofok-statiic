@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','contact_info')->first()->custom_lang : $websiteLang->where('lang_key','contact_info')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','contact_info')->first()->custom_lang : $websiteLang->where('lang_key','contact_info')->first()->default_lang }}</h6>
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.contact-information.update',$contact->id) }}" method="POST">
                        @csrf
                        @method('patch')
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="header">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','contact_header')->first()->custom_lang : $websiteLang->where('lang_key','contact_header')->first()->default_lang }}</label>
                                            <input type="text" name="header" class="form-control" id="header"  value="{{ $contact->getTranslation('header', 'en') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="header_ar">{{ __('dashboard.contact_info.Header In Arabic') }}</label>
                                            <input type="text" name="header_ar" class="form-control" id="header_ar"  value="{{ $contact->getTranslation('header', 'ar') }}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="address">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','address')->first()->custom_lang : $websiteLang->where('lang_key','address')->first()->default_lang }}</label>
                                            <textarea name="address" id="address" cols="30" rows="3" class="form-control" >{{ $contact->getTranslation('address', 'en') }}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="address_ar">{{ __('dashboard.contact_info.Address In Arabic') }}</label>
                                            <textarea name="address_ar" id="address_ar" cols="30" rows="3" class="form-control" >{{ $contact->getTranslation('address', 'ar') }}</textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="description">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','contact_des')->first()->custom_lang : $websiteLang->where('lang_key','contact_des')->first()->default_lang }}</label>
                                            <textarea name="description" id="description" cols="30" rows="3" class="form-control" >{{ $contact->getTranslation('description', 'en') }}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="description_ar">{{ __('dashboard.contact_info.Description In Arabic') }}</label>
                                            <textarea name="description_ar" id="description_ar" cols="30" rows="3" class="form-control" >{{ $contact->getTranslation('description', 'ar') }}</textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="about">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','footer_about')->first()->custom_lang : $websiteLang->where('lang_key','footer_about')->first()->default_lang }}</label>
                                            <textarea name="about" id="about" cols="30" rows="3" class="form-control" >{{ $contact->getTranslation('about', 'en') }}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="about_ar">{{ __('dashboard.contact_info.About In Arabic') }}</label>
                                            <textarea name="about_ar" id="about_ar" cols="30" rows="3" class="form-control" >{{ $contact->getTranslation('about', 'ar') }}</textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="phones">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','phone')->first()->custom_lang : $websiteLang->where('lang_key','phone')->first()->default_lang }}</label>
                                    <textarea name="phones" id="phones" cols="30" rows="3" class="form-control" >{{ $contact->phones }}</textarea>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="emails">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','email')->first()->custom_lang : $websiteLang->where('lang_key','email')->first()->default_lang }}</label>
                                    <textarea name="emails" id="emails" cols="30" rows="3" class="form-control" >{{ $contact->emails }}</textarea>
                                </div>
                            </div>


                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="map_embed_code">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','google_map')->first()->custom_lang : $websiteLang->where('lang_key','google_map')->first()->default_lang }}</label>
                                    <textarea name="map_embed_code" id="map_embed_code" class="form-control" cols="30" rows="5" >{{ $contact->map_embed_code }}</textarea>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="copyright">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','copyright')->first()->custom_lang : $websiteLang->where('lang_key','copyright')->first()->default_lang }}</label>
                                            <input type="text" name="copyright" class="form-control" id="copyright"  value="{{ $contact->getTranslation('copyright', 'en') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="copyright_ar">{{ __('dashboard.contact_info.Copyright In Arabic') }}</label>
                                            <input type="text" name="copyright_ar" class="form-control" id="copyright_ar"  value="{{ $contact->getTranslation('copyright', 'ar') }}">
                                        </div>
                                    </div>
                                </div>
                            </div>



                        </div>
                        <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
