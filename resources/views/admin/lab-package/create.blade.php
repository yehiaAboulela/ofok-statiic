@extends('layouts.admin.layout')
@section('title')
    <title>@lang('dashboard.packages.title')</title>
@endsection
@section('admin-content')
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-body">
                    <form action="{{ route('admin.packages.store') }}" method="POST"
                          enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            @foreach(config('app.available_locales') as $locale)
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">@lang('dashboard.investigations.name_'.$locale)
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

                            <div class="col-md-6 col-lg-6">
                                <div class="form-group">
                                    <label for="name">@lang('dashboard.packages.laboratories')
                                        <span class="text-danger">*</span>
                                    </label>
                                    <select class="form-control" name="laboratory_id">
                                        @foreach($laboratories as $laboratory)
                                            <option value="{{$laboratory->id}}">{{$laboratory->name}}</option>
                                        @endforeach

                                    </select>
                                </div>

                                @error('laboratory_id')
                                <div class="text-danger"> {{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-12 col-lg-12">
                                <label for="name">@lang('dashboard.packages.investigations')
                                    <span class="text-danger">*</span>
                                </label>
                                <select class="form-control" name="investigations[]" multiple="multiple" size="2">
                                    @foreach($investigations as $investigation)
                                        <option value="{{$investigation->name}}">{{$investigation->name}}</option>
                                    @endforeach
                                </select>
                                @error('investigations.*')
                                <div class="text-danger"> {{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6 col-lg-6">
                                <div class="form-group">
                                    <label for="name">@lang('dashboard.packages.price')
                                        <span class="text-danger">*</span>
                                    </label>
                                    <input type="text" class="form-control" name="price"
                                           required>
                                </div>
                                @error('price')
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
                                        @lang('dashboard.investigations.is_active')
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
@section('custom-js')
    <script>
        $('.select2').select2();
    </script>
@endsection
