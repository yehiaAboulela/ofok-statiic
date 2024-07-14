@extends('layouts.admin.layout')
@section('title')
<title>{{ $websiteLang->where('lang_key','navbar')->first()->custom_lang }}</title>
@endsection
@section('admin-content')
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','navbar')->first()->custom_lang . ' in English' : $websiteLang->where('lang_key','navbar')->first()->default_lang . ' in English' }}</h6>
                </div>
                <div class="card-body">

                    <form action="{{ route('admin.update.navigation') }}" method="POST">
                        @csrf
                    <table class="table table-bordered">
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','home_page')->first()->custom_lang : $websiteLang->where('lang_key','home_page')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="home" value="{{ $navigation->home }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','about_us')->first()->custom_lang : $websiteLang->where('lang_key','about_us')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="about_us" value="{{ $navigation->about_us }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','pages')->first()->custom_lang : $websiteLang->where('lang_key','pages')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="pages" value="{{ $navigation->pages }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','doctor')->first()->custom_lang : $websiteLang->where('lang_key','doctor')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="doctor" value="{{ $navigation->doctor }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','service')->first()->custom_lang : $websiteLang->where('lang_key','service')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="service" value="{{ $navigation->service }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','dep')->first()->custom_lang : $websiteLang->where('lang_key','dep')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="department" value="{{ $navigation->department }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','faq')->first()->custom_lang : $websiteLang->where('lang_key','faq')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="faq" value="{{ $navigation->faq }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','testi')->first()->custom_lang : $websiteLang->where('lang_key','testi')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="testimonial" value="{{ $navigation->testimonial }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','blog')->first()->custom_lang : $websiteLang->where('lang_key','blog')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="blog" value="{{ $navigation->blog }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','contact_us')->first()->custom_lang : $websiteLang->where('lang_key','contact_us')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="contact_us" value="{{ $navigation->contact_us }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','app')->first()->custom_lang : $websiteLang->where('lang_key','app')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="appointment" value="{{ $navigation->appointment }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','dashboard')->first()->custom_lang : $websiteLang->where('lang_key','dashboard')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="dashboard" value="{{ $navigation->dashboard }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','payment')->first()->custom_lang : $websiteLang->where('lang_key','payment')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="payment" value="{{ $navigation->payment }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','login')->first()->custom_lang : $websiteLang->where('lang_key','login')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="login" value="{{ $navigation->login }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','register')->first()->custom_lang : $websiteLang->where('lang_key','register')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="register" value="{{ $navigation->register }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','term_and_cond')->first()->custom_lang : $websiteLang->where('lang_key','term_and_cond')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="terms_and_condition" value="{{ $navigation->terms_and_condition }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','privacy_policy')->first()->custom_lang : $websiteLang->where('lang_key','privacy_policy')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="privacy_policy" value="{{ $navigation->privacy_policy }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','forget_pass')->first()->custom_lang : $websiteLang->where('lang_key','forget_pass')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="forget_password" value="{{ $navigation->forget_password }}"></td>
                        </tr>
                        <tr>
                            <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','reset_pass')->first()->custom_lang : $websiteLang->where('lang_key','reset_pass')->first()->default_lang }}</td>
                            <td><input type="text" class="form-control" name="reset_password" value="{{ $navigation->reset_password }}"></td>
                        </tr>








                    </table>
                    <button type="submit" class="btn btn-success">Update</button>
                </div>
            </form>
            </div>
        </div>

        <div class="col-md-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','navbar')->first()->custom_lang . ' in Arabic' : $websiteLang->where('lang_key','navbar')->first()->default_lang . ' in Arabic' }}</h6>
                </div>
                <div class="card-body">

                    <form action="{{ route('admin.update.navigation2', $navigation2->id) }}" method="POST">
                        @csrf
                        <table class="table table-bordered">
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','home_page')->first()->custom_lang : $websiteLang->where('lang_key','home_page')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="home" value="{{ $navigation2->home ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','about_us')->first()->custom_lang : $websiteLang->where('lang_key','about_us')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="about_us" value="{{ $navigation2->about_us ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','pages')->first()->custom_lang : $websiteLang->where('lang_key','pages')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="pages" value="{{ $navigation2->pages ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','doctor')->first()->custom_lang : $websiteLang->where('lang_key','doctor')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="doctor" value="{{ $navigation2->doctor ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','service')->first()->custom_lang : $websiteLang->where('lang_key','service')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="service" value="{{ $navigation2->service ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','dep')->first()->custom_lang : $websiteLang->where('lang_key','dep')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="department" value="{{ $navigation2->department ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','faq')->first()->custom_lang : $websiteLang->where('lang_key','faq')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="faq" value="{{ $navigation2->faq ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','testi')->first()->custom_lang : $websiteLang->where('lang_key','testi')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="testimonial" value="{{ $navigation2->testimonial ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','blog')->first()->custom_lang : $websiteLang->where('lang_key','blog')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="blog" value="{{ $navigation2->blog ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','contact_us')->first()->custom_lang : $websiteLang->where('lang_key','contact_us')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="contact_us" value="{{ $navigation2->contact_us ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','app')->first()->custom_lang : $websiteLang->where('lang_key','app')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="appointment" value="{{ $navigation2->appointment ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','dashboard')->first()->custom_lang : $websiteLang->where('lang_key','dashboard')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="dashboard" value="{{ $navigation2->dashboard ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','payment')->first()->custom_lang : $websiteLang->where('lang_key','payment')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="payment" value="{{ $navigation2->payment ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','login')->first()->custom_lang : $websiteLang->where('lang_key','login')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="login" value="{{ $navigation2->login ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','register')->first()->custom_lang : $websiteLang->where('lang_key','register')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="register" value="{{ $navigation2->register ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','term_and_cond')->first()->custom_lang : $websiteLang->where('lang_key','term_and_cond')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="terms_and_condition" value="{{ $navigation2->terms_and_condition ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','privacy_policy')->first()->custom_lang : $websiteLang->where('lang_key','privacy_policy')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="privacy_policy" value="{{ $navigation2->privacy_policy ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','forget_pass')->first()->custom_lang : $websiteLang->where('lang_key','forget_pass')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="forget_password" value="{{ $navigation2->forget_password ?? '' }}"></td>
                            </tr>
                            <tr>
                                <td>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','reset_pass')->first()->custom_lang : $websiteLang->where('lang_key','reset_pass')->first()->default_lang }}</td>
                                <td><input type="text" class="form-control" name="reset_password" value="{{ $navigation2->reset_password ?? '' }}"></td>
                            </tr>

                        </table>
                        <button type="submit" class="btn btn-success">Update</button>
                </div>
                </form>
            </div>
        </div>
    </div>




@endsection
