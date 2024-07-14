@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','feature')->first()->custom_lang : $websiteLang->where('lang_key','feature')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="#" data-toggle="modal" data-target="#createFeature" class="btn btn-primary"><i class="fas fa-plus" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','create')->first()->custom_lang : $websiteLang->where('lang_key','create')->first()->default_lang }} </a></h1>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','feature_table')->first()->custom_lang : $websiteLang->where('lang_key','feature_table')->first()->default_lang }}</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th width="5%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','serial')->first()->custom_lang : $websiteLang->where('lang_key','serial')->first()->default_lang }}</th>
                            <th width="20%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','title')->first()->custom_lang : $websiteLang->where('lang_key','title')->first()->default_lang }}</th>
                            <th width="30%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','des')->first()->custom_lang : $websiteLang->where('lang_key','des')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','img')->first()->custom_lang : $websiteLang->where('lang_key','img')->first()->default_lang }}</th>
                            <th width="10%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','logo')->first()->custom_lang : $websiteLang->where('lang_key','logo')->first()->default_lang }}</th>
                            <th width="5%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','action')->first()->custom_lang : $websiteLang->where('lang_key','action')->first()->default_lang }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($features as $index => $item)
                        <tr>
                            <td>{{ ++$index }}</td>
                            <td>{{ $item->title }}</td>
                            <td>{{ $item->description }}</td>
                            <td><img src="{{ url($item->background_image) }}" alt="blog image" class="w_200"></td>
                            <td><i class="{{ $item->logo }} fz_40"></i></td>
                            <td>
                                @if ($item->status==1)
                                <a href="" onclick="featureStatus({{ $item->id }})"><input type="checkbox" checked data-toggle="toggle" data-on="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}" data-off="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}" data-onstyle="success" data-offstyle="danger"></a>
                                @else
                                    <a href="" onclick="featureStatus({{ $item->id }})"><input type="checkbox" data-toggle="toggle" data-on="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}" data-off="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}" data-onstyle="success" data-offstyle="danger"></a>

                                @endif
                            </td>
                            <td>
                                <a href="#" data-toggle="modal" data-target="#updateFeature-{{ $item->id }}" class="btn btn-primary btn-sm"><i class="fas fa-edit  "></i></a>
                                <a data-toggle="modal" data-target="#deleteModal" href="javascript:;" onclick="deleteData({{ $item->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a>


                            </td>
                        </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- create feature Modal -->
    <div class="modal fade" id="createFeature" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                    <div class="modal-header">
                            <h5 class="modal-title">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','feature_form')->first()->custom_lang : $websiteLang->where('lang_key','feature_form')->first()->default_lang }}</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                        </div>
                <div class="modal-body">
                    <div class="container-fluid">

                    <form action="{{ route('admin.feature.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="title">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','title')->first()->custom_lang : $websiteLang->where('lang_key','title')->first()->default_lang }}</label>
                            <input type="text" name="title" class="form-control" id="title" >
                        </div>
                        <div class="form-group">
                            <label>{{ __('dashboard.Title In Arabic') }}</label>
                            <input type="text" name="title_ar" class="form-control" id="title_ar" >
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="image">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','img')->first()->custom_lang : $websiteLang->where('lang_key','img')->first()->default_lang }}</label>
                                    <input type="file" class="form-control" name="background_image" id="image">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="logo">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','logo')->first()->custom_lang : $websiteLang->where('lang_key','logo')->first()->default_lang }}</label>
                                    <input type="text" class="form-control" name="logo" id="logo" placeholder='fas fa-edit'>
                                </div>
                            </div>

                        </div>
                        <div class="form-group">
                            <label for="description">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','short_des')->first()->custom_lang : $websiteLang->where('lang_key','short_des')->first()->default_lang }}</label>
                            <textarea name="description" id="description" cols="30" rows="5" class="form-control"></textarea>
                        </div>

                        <div class="form-group">
                            <label>{{ __('dashboard.Description In Arabic') }}</label>
                            <textarea name="description_ar" id="description_ar" cols="30" rows="5" class="form-control"></textarea>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="status">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</label>
                                    <select name="status" id="status" class="form-control">
                                        <option value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}</option>
                                        <option value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}</option>
                                    </select>
                                </div>
                            </div>
                        </div>


                        <button type="button" class="btn btn-danger" data-dismiss="modal">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','close')->first()->custom_lang : $websiteLang->where('lang_key','close')->first()->default_lang }}</button>
                        <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','save')->first()->custom_lang : $websiteLang->where('lang_key','save')->first()->default_lang }}</button>
                    </form>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- create feature Modal -->
    @foreach ($features as $item)
        <div class="modal fade" id="updateFeature-{{ $item->id }}" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                        <div class="modal-header">
                                <h5 class="modal-title">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','feature_form')->first()->custom_lang : $websiteLang->where('lang_key','feature_form')->first()->default_lang }}</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                            </div>
                    <div class="modal-body">
                        <div class="container-fluid">

                        <form action="{{ route('admin.feature.update',$item->id) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('patch')
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="title">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','title')->first()->custom_lang : $websiteLang->where('lang_key','title')->first()->default_lang }}</label>
                                        <input type="text" name="title" class="form-control" id="title" value="{{ $item->title }}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>{{ __('dashboard.Title In Arabic') }}</label>
                                        <input type="text" name="title_ar" class="form-control" id="title_ar" value="{{ $item->getTranslation('title', 'ar') }}">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="image">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','img')->first()->custom_lang : $websiteLang->where('lang_key','img')->first()->default_lang }}</label>
                                        <input type="file" class="form-control" name="background_image" id="image">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="image">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','exist_img')->first()->custom_lang : $websiteLang->where('lang_key','exist_img')->first()->default_lang }}</label>
                                        <img src="{{ url($item->background_image) }}" alt="backgroud image" width="120px">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="description">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','short_des')->first()->custom_lang : $websiteLang->where('lang_key','short_des')->first()->default_lang }}</label>
                                <textarea name="description" id="description" cols="30" rows="5" class="form-control">{{ $item->description }}</textarea>
                            </div>

                            <div class="form-group">
                                <label>{{ __('dashboard.Description In Arabic') }}</label>
                                <textarea name="description_ar" id="description_ar" cols="30" rows="5" class="form-control">{{ $item->getTranslation('description', 'ar') }}</textarea>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="status">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</label>
                                        <select name="status" id="status" class="form-control">
                                            <option {{ $item->status==1 ? 'selected' : '' }} value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}</option>
                                            <option {{ $item->status==0 ? 'selected' : '' }} value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="logo">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','logo')->first()->custom_lang : $websiteLang->where('lang_key','logo')->first()->default_lang }}</label>
                                        <input type="text" class="form-control" name="logo" id="logo" value="{{ $item->logo }}">
                                    </div>
                                </div>
                            </div>


                            <button type="button" class="btn btn-danger" data-dismiss="modal">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','close')->first()->custom_lang : $websiteLang->where('lang_key','close')->first()->default_lang }}</button>
                            <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','update')->first()->custom_lang : $websiteLang->where('lang_key','update')->first()->default_lang }}</button>
                        </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    @endforeach



    <script>
        function deleteData(id){
            $("#deleteForm").attr("action",'{{ url("admin/feature/") }}'+"/"+id)
        }

        function featureStatus(id){

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
                url:"{{url('/admin/feature-status/')}}"+"/"+id,
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
