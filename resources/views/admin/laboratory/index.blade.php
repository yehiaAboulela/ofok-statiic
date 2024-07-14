@extends('layouts.admin.layout')
@section('title')
    <title>@lang('dashboard.laboratory.title')</title>
@endsection
@section('admin-content')
    <!-- department table -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">
                <a href="{{ route('admin.laboratories.create') }}" class="btn btn-primary"><i
                        class="fas fa-plus"
                        aria-hidden="true"></i> @lang('dashboard.laboratory.create')
                </a>
            </h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                {!! $dataTable->table(['class' => 'table-data table table-bordered']) !!}
            </div>
        </div>
    </div>
@endsection
@section('custom_js')
    {!! $dataTable->scripts() !!}
@endsection
