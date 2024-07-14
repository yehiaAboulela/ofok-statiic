@extends('layouts.admin.layout')
@section('title')
    <title>@lang('dashboard.laboratory.title')</title>
@endsection
@section('admin-content')
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-body">
                    <form action="{{ route('admin.laboratories.store') }}" method="POST"
                          enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            @foreach(config('app.available_locales') as $locale)
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">@lang('dashboard.laboratory.name_'.$locale)
                                            <span class="text-danger">*</span>
                                        </label>
                                        <input type="text" class="form-control" name="name[{{$locale}}]"
                                               required>
                                    </div>
                                    @error('name.'.$locale)
                                    <div class="text-danger"> {{ $message }}</div>
                                    @enderror
                                </div>
                            @endforeach

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="phone">@lang('dashboard.laboratory.phone')</label>
                                    <input type="text" class="form-control" name="phone" id="phone">
                                </div>
                                @error('phone')
                                <div class="text-danger"> {{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="address">@lang('dashboard.laboratory.address')<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="address" id="address" required>
                                </div>
                                @error('address')
                                <div class="text-danger"> {{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="working_time">@lang('dashboard.laboratory.working_time')</label>
                                    <input type="text" class="form-control" name="working_time" id="working_time">
                                </div>
                                @error('working_time')
                                <div class="text-danger"> {{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="map_url">@lang('dashboard.laboratory.map_url')</label>
                                    <input type="url" class="form-control" name="map_url" id="map_url">
                                </div>
                                @error('map_url')
                                <div class="text-danger"> {{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-lg-6">
                                <div class="form-check">
                                    <input class="form-check-input" name="is_active" type="checkbox" value="1"
                                           id="flexCheckChecked" checked>
                                    <label class="form-check-label" for="flexCheckChecked">
                                        @lang('dashboard.laboratory.is_active')
                                    </label>
                                </div>
                            </div>
                        </div>

                        <br>
                        <div class="row">
                            <div class="col-md-4 mt-2">
                                <button type="submit"
                                        class="btn btn-success ">
                                    <i class="fa fa-save"></i>
                                    @lang('dashboard.general.save')

                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
