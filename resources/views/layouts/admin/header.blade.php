@php
$websiteLang=App\ManageText::all();
$setting=App\Setting::first();
@endphp

<!DOCTYPE html>
@if(App::currentLocale() == 'ar')
<html lang="ar" dir="rtl">
@else
    <html lang="en" dir="ltr">
@endif
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


    @yield('title')
    <title>@yield('title')</title>

    <!-- Custom fonts for this template-->
    <link href="{{ asset('backend/vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <link rel="stylesheet" href="{{ asset('backend/css/prescription.css') }}">
    <!-- Custom styles for this template-->
    @if(App::currentLocale() == 'ar')
     <link href="{{ asset('backend/css/sb-admin-2-rtl.css') }}" rel="stylesheet">
    @else
    <link href="{{ asset('backend/css/sb-admin-2.css') }}" rel="stylesheet">
    @endif



    <link href="{{ asset('backend/vendor/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('patient/css/jquery-ui.min.css') }}">
    <link rel="stylesheet" href="{{ asset('patient/css/bootstrap-datepicker.min.css') }}">
    <link rel="stylesheet" href="{{ asset('patient/css/select2.min.css') }}">
    <link rel="stylesheet" href="{{ asset('toastr/toastr.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/css/bootstrap4-toggle.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/summernote/summernote-bs4.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/timepicker/jquery.timepicker.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/timepicker/jquery.datetimepicker.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/css/spacing.css') }}">


    <script src="{{ asset('backend/vendor/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('backend/timepicker/jquery.timepicker.min.js') }}"></script>
    <script src="{{ asset('backend/timepicker/jquery.datetimepicker.full.min.js') }}"></script>
    <script src="{{ asset('backend/css/sweetalert2.css') }}"></script>

    <style>
        .table-data{
            width: 100% !important;
        }
    </style>

</head>
