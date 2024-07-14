@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','slider')->first()->custom_lang : $websiteLang->where('lang_key','slider')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800 d-inline"><a href="javascript:;" data-toggle="modal" data-target="#newCategory" class="btn btn-primary"><i class="fas fa-plus" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','create')->first()->custom_lang : $websiteLang->where('lang_key','create')->first()->default_lang }} </a></h1>
    <h1 class="h3 mb-2 text-gray-800 d-inline"><a href="{{ route('admin.slider.content') }}" class="btn btn-success"><i class="fas fa-plus" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','manage_slider_content')->first()->custom_lang : $websiteLang->where('lang_key','manage_slider_content')->first()->default_lang }} </a></h1>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','slider_img')->first()->custom_lang : $websiteLang->where('lang_key','slider_img')->first()->default_lang }}</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','serial')->first()->custom_lang : $websiteLang->where('lang_key','serial')->first()->default_lang }}</th>
                            <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','img')->first()->custom_lang : $websiteLang->where('lang_key','img')->first()->default_lang }}</th>
                            <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','img_ar')->first()->custom_lang : $websiteLang->where('lang_key','img_ar')->first()->default_lang }}</th>
                            <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</th>
                            <th>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','action')->first()->custom_lang : $websiteLang->where('lang_key','action')->first()->default_lang }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($sliders as $index => $item)
                        <tr>
                            <td>{{ ++$index }}</td>
                            <td><img src="{{ url($item->image) }}" alt="Slider Image" width="200px"></td>
                            <td><img src="{{ url($item->image_ar ?? '') }}" alt="Slider Image ar" width="200px"></td>
                            <td>
                                @if ($item->status==1)
                                <a href="" onclick="sliderStatus({{ $item->id }})"><input type="checkbox" checked data-toggle="toggle" data-on="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}" data-off="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}" data-onstyle="success" data-offstyle="danger"></a>
                                @else
                                    <a href="" onclick="sliderStatus({{ $item->id }})"><input type="checkbox" data-toggle="toggle" data-on="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}" data-off="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}" data-onstyle="success" data-offstyle="danger"></a>

                                @endif
                            </td>
                            <td>
                                <a data-toggle="modal" data-target="#deleteModal" href="javascript:;" onclick="deleteData({{ $item->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash    "></i></a>


                            </td>
                        </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Create Blog Category Modal -->
    <div class="modal fade" id="newCategory" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                    <div class="modal-header">
                            <h5 class="modal-title">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','slider_img')->first()->custom_lang : $websiteLang->where('lang_key','slider_img')->first()->default_lang }} </h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                        </div>
                <div class="modal-body">
                    <div class="container-fluid">

                        <form action="{{ route('admin.slider.store') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <label for="image">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','img')->first()->custom_lang : $websiteLang->where('lang_key','img')->first()->default_lang }}</label>
                                <input type="file" class="form-control" name="image" id="image">
                            </div>
                            <div class="form-group">
                                <label for="image">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','img_ar')->first()->custom_lang : $websiteLang->where('lang_key','img_ar')->first()->default_lang }}</label>
                                <input type="file" class="form-control" name="image_ar" id="image_ar">
                            </div>
                            <div class="form-group">
                                <label for="status">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</label>
                                <select name="status" id="status" class="form-control">
                                    <option value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}</option>
                                    <option value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}</option>
                                </select>
                            </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','close')->first()->custom_lang : $websiteLang->where('lang_key','close')->first()->default_lang }}</button>
                    <button type="submit" class="btn btn-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','save')->first()->custom_lang : $websiteLang->where('lang_key','save')->first()->default_lang }}</button>
                </div>
            </form>
            </div>
        </div>
    </div>


    <script>
        function deleteData(id){
            $("#deleteForm").attr("action",'{{ url("/admin/slider/") }}'+"/"+id)
        }
        function sliderStatus(id){

            // project demo mode check
         var isDemo="{{ env('PROJECT_MODE') }}"
         var demoNotify="{{ env('NOTIFY_TEXT') }}"
         if(isDemo==0){
             toastr.error(demoNotify);
             return;
         }
         // end
            $.ajax({
                type:"get",
                url:"{{url('/admin/slider-status/')}}"+"/"+id,
                success:function(response){
                   toastr.success(response)
                },
                error:function(err){
                    console.log(err);

                }
            })
        }
    </script>
@endsection
