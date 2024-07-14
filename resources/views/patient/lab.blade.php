@extends('layouts.patient.layout')
@section('title')
<title>{{ $title_meta->doctor_title }}</title>
@endsection
@section('meta')
<meta name="description" content="{{ $title_meta->doctor_meta_description }}">
@endsection
@section('patient-content')

<!--Banner Start-->
<div class="banner-area flex" style="background-image:url({{ $banner->doctor ? url($banner->doctor) : '' }});">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="banner-text">
                    <h1>@lang('dashboard.laboratory.title')</h1>
                    <ul>
                        <li><a href="{{ url('/') }}">{{ $navigation->home }}</a></li>
                        <li><span>@lang('dashboard.packages.title')</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Banner End-->

<div class="LapPakagess">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10 col-sm-10 col-xs-12">
                <div class="PakagesItemss">
                    <div class="row">
                        @foreach($packages as $package)
                            <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                                <div class="LapItemm">
                                    <div class="LapNamePrice">
                                        <h2 class="Namee">{{$package->name}}</h2>
                                        <h3 class="Pricee">{{$package->price .' L.E'}}</h3>
                                    </div>
                                    <div class="PaInfoItem">
                                        @foreach($package->investigations as $investigation)
                                            <p>{{$investigation}}</p>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
