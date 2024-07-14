@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','service_img')->first()->custom_lang : $websiteLang->where('lang_key','service_img')->first()->default_lang }}</title>
@endsection
@section('admin-content')
<style>
    .btn-row button{
        margin-top: 30px;
    }
</style>
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('admin.service.index') }}" class="btn btn-primary"><i class="fas fa-list" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','all_service')->first()->custom_lang : $websiteLang->where('lang_key','all_service')->first()->default_lang }} </a></h1>
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-7">
            <div class="card shadow">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','service_img')->first()->custom_lang : $websiteLang->where('lang_key','service_img')->first()->default_lang }}</h6>
                </div>
                <div class="card-body">
                    @if (count($images)>0)
                        <table class="table table-bordered mb-5">
                            @foreach ($images as $item)
                                <tr>
                                    @if ($item->small_image)
                                    <td><img src="{{ url($item->small_image) }}" alt="Service Image" width="120px"></td>
                                    @else
                                    <td><img src="" alt="Service Image" width="120px"></td>
                                    @endif
                                    <td><a href="{{ route('admin.delete.service.image',$item->id) }}" class="btn btn-danger btn-sm"><i class="fas fa-trash" aria-hidden="true"></i></a></td>
                                </tr>
                            @endforeach
                        </table>
                    @else
                        <h4 class="text-danger">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','img_not_found')->first()->custom_lang : $websiteLang->where('lang_key','img_not_found')->first()->default_lang }}</h4>
                    @endif

                    <div class="my-5"></div>

                    <form action="{{ route('admin.service.image.store',$serviceId) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div id="addRow">
                            <div class="row">
                                <div class="col-md-9">
                                    <div class="form-group">
                                        <label for="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','img')->first()->custom_lang : $websiteLang->where('lang_key','img')->first()->default_lang }}</label>
                                        <input type="file" name="image[]" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-3 btn-row">
                                    <button type="button" id="addImageRow" class="btn btn-success" ><i class="fas fa-plus" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                        <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','save')->first()->custom_lang : $websiteLang->where('lang_key','save')->first()->default_lang }}</button>
                    </form>


                </div>
            </div>
        </div>
    </div>

@endsection
