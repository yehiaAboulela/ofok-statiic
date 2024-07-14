@extends('layouts.admin.layout')
@section('title')
<title>{{ $websiteLang->where('lang_key','home_page')->first()->custom_lang }}</title>
@endsection
@section('admin-content')
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-8">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ $websiteLang->where('lang_key','home_page')->first()->custom_lang }}</h6>
                </div>
                <div class="card-body">

                    <form action="{{ route('admin.home.page.update') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="">{{ $websiteLang->where('lang_key','title')->first()->custom_lang }}</label>
                            <input type="text" name="home_title" class="form-control" value="{{ $page->home_title }}">
                        </div>
                        <div class="form-group">
                            <label for="home_meta_description">{{ $websiteLang->where('lang_key','meta_des')->first()->custom_lang }}</label>
                            <textarea name="home_meta_description" id="home_meta_description" cols="30" rows="5" class="form-control">{{ $page->home_meta_description }}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="show_navbar">{{ $websiteLang->where('lang_key','show_navbar')->first()->custom_lang }}</label>
                            <select name="show_navbar" id="show_navbar" class="form-control">
                                <option {{ $navigation->show_homepage==1 ? 'selected':'' }} value="1">{{ $websiteLang->where('lang_key','yes')->first()->custom_lang }}</option>
                                <option {{ $navigation->show_homepage==0 ? 'selected':'' }} value="0">{{ $websiteLang->where('lang_key','no')->first()->custom_lang }}</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-success">{{ $websiteLang->where('lang_key','update')->first()->custom_lang }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
