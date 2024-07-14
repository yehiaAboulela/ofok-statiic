@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','zoom_setting')->first()->custom_lang : $websiteLang->where('lang_key','zoom_setting')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','zoom_setting')->first()->custom_lang : $websiteLang->where('lang_key','zoom_setting')->first()->default_lang }}</h6>
                </div>
                <div class="card-body">
                    @if (!$credential)
                    <form action="{{ route('admin.store-zoom-credential') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="zoom_api_key">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','client_id')->first()->custom_lang : $websiteLang->where('lang_key','client_id')->first()->default_lang }}</label>
                            <input type="text" class="form-control" name="zoom_api_key" id="zoom_api_key">
                        </div>



                        <div class="form-group">
                            <label for="zoom_api_secret">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','client_secret')->first()->custom_lang : $websiteLang->where('lang_key','client_secret')->first()->default_lang }}</label>
                            <input type="text" class="form-control" name="zoom_api_secret" id="zoom_api_secret">
                        </div>


                        <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','save')->first()->custom_lang : $websiteLang->where('lang_key','save')->first()->default_lang }}</button>
                    </form>
                    @else
                        <form action="{{ route('admin.update-zoom-credential',$credential->id) }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="zoom_api_key">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','client_id')->first()->custom_lang : $websiteLang->where('lang_key','client_id')->first()->default_lang }}</label>
                                <input type="text" class="form-control" name="zoom_api_key" id="zoom_api_key" value="{{ $credential->zoom_api_key }}">
                            </div>

                            <div class="form-group">
                                <label for="zoom_api_secret">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','client_secret')->first()->custom_lang : $websiteLang->where('lang_key','client_secret')->first()->default_lang }}</label>
                                <input type="text" class="form-control" name="zoom_api_secret" id="zoom_api_secret" value="{{ $credential->zoom_api_secret }}">
                            </div>

                            <div class="form-group">
                                <label for="zoom_account_id">Account ID</label>
                                <input type="text" class="form-control" name="zoom_account_id" id="zoom_account_id" value="{{ $credential->account_id }}">
                            </div>

                            <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }}</button>
                        </form>
                    @endif
                </div>
            </div>
        </div>
    </div>

@endsection
