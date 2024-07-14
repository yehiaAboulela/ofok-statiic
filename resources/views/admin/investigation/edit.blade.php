@extends('layouts.admin.layout')
@section('title')
    <title>@lang('dashboard.investigations.title')</title>
@endsection
@section('admin-content')
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-body">
                    <form action="{{ route('admin.investigations.update',$investigation->id) }}" method="POST"
                          enctype="multipart/form-data">
                        @method('PATCH')
                        @csrf
                        <div class="row">
                            @foreach(config('app.available_locales') as $locale)
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">@lang('dashboard.investigations.name_'.$locale)
                                                <span class="text-danger">*</span>
                                            </label>
                                        <input type="text" value="{{$investigation->getTranslation('name',$locale)}}" class="form-control" name="name[{{$locale}}]"
                                               required>
                                    </div>
                                    @error('name.'.$locale)
                                    <div class="text-danger"> {{ $message }}</div>
                                    @enderror
                                </div>
                            @endforeach
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name">@lang('dashboard.investigations.price')
                                    <span class="text-danger">*</span>
                                </label>
                                <input type="text" value="{{old('price',$investigation->price)}}" class="form-control" name="price"
                                       required>
                            </div>
                            @error('price')
                            <div class="text-danger"> {{ $message }}</div>
                            @enderror
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-lg-6">
                                <div class="form-check">
                                    <input class="form-check-input" name="is_active" type="checkbox" value="1"
                                           id="flexCheckChecked" {{$investigation->is_active ? 'checked':''}}>
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
