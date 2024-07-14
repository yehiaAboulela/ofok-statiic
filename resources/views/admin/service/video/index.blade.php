@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','service_video')->first()->custom_lang : $websiteLang->where('lang_key','service_video')->first()->default_lang }}</title>
@endsection
@section('admin-content')
<style>
    .btn-row button{
        margin-top: 30px;
    }
</style>
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800 d-inline"><a href="{{ route('admin.service.index') }}" class="btn btn-primary"><i class="fas fa-list" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','all_service')->first()->custom_lang : $websiteLang->where('lang_key','all_service')->first()->default_lang }} </a></h1>
    <h1 class="h3 mb-2 text-gray-800 d-inline"><a href="#" data-toggle="modal" data-target="#addVidoe" class="btn btn-success"><i class="fas fa-plus" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','create')->first()->custom_lang : $websiteLang->where('lang_key','create')->first()->default_lang }} </a></h1>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','service_video')->first()->custom_lang : $websiteLang->where('lang_key','service_video')->first()->default_lang }}</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th width="10%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','serial')->first()->custom_lang : $websiteLang->where('lang_key','serial')->first()->default_lang }}</th>
                            <th width="25%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','service')->first()->custom_lang : $websiteLang->where('lang_key','service')->first()->default_lang }}</th>
                            <th width="25%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','link')->first()->custom_lang : $websiteLang->where('lang_key','link')->first()->default_lang }}</th>
                            <th width="10%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','action')->first()->custom_lang : $websiteLang->where('lang_key','action')->first()->default_lang }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($videos as $index => $item)
                        <tr>
                            <td>{{ ++$index }}</td>
                            <td>{{ $item->service->header }}</td>
                            <td><a target="_blank" href="{{ $item->link }}">{{ $item->link }}</a></td>
                            <td>
                                @if ($item->status==1)
                                    <a href="" onclick="serviceVideoStatus({{ $item->id }})"><input type="checkbox" checked data-toggle="toggle" data-on="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}" data-off="I{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}" data-onstyle="success" data-offstyle="danger"></a>
                                @else
                                    <a href="" onclick="serviceVideoStatus({{ $item->id }})"><input type="checkbox" data-toggle="toggle" data-on="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}" data-off="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}" data-onstyle="success" data-offstyle="danger"></a>

                                @endif

                            </td>
                            <td>
                                <a href="#" data-toggle="modal" data-target="#updateVideo-{{ $item->id }}" class="btn btn-primary btn-sm"><i class="fas fa-edit"></i></a>
                                <a data-toggle="modal" data-target="#deleteModal" href="javascript:;" onclick="deleteData({{ $item->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash    "></i></a>


                            </td>
                        </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- create video Modal -->
    <div class="modal fade" id="addVidoe" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                    <div class="modal-header">
                            <h5 class="modal-title">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','service_video')->first()->custom_lang : $websiteLang->where('lang_key','service_video')->first()->default_lang }}</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                        </div>
                <div class="modal-body">
                    <div class="container-fluid">

                    <form action="{{ route('admin.service-video.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="name">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }}</label>
                            <select name="name" id="name" class="form-control">
                                <option value="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','select_service')->first()->custom_lang : $websiteLang->where('lang_key','select_service')->first()->default_lang }}</option>
                                @foreach ($services as $item)
                                    <option value="{{ $item->id }}">{{ $item->header }}</option>
                                @endforeach
                            </select>
                        </div>

                        <div id="inputRow">
                            <div class="row" >
                                <div class="col-md-9">
                                    <div class="form-group">
                                        <label for="link">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','link')->first()->custom_lang : $websiteLang->where('lang_key','link')->first()->default_lang }}</label>
                                        <input type="text" name="link[]" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-3 btn-row">
                                    <button type="button" class="btn btn-success" id="addRow">+</button>
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


<!-- update video Modal -->
@foreach ($videos as $video)
    <div class="modal fade" id="updateVideo-{{ $video->id }}" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                    <div class="modal-header">
                            <h5 class="modal-title">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','service_video')->first()->custom_lang : $websiteLang->where('lang_key','service_video')->first()->default_lang }}</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                        </div>
                <div class="modal-body">
                    <div class="container-fluid">

                    <form action="{{ route('admin.service-video.update',$video->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('patch')
                        <div class="form-group">
                            <label for="name">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }}</label>
                            <select name="name" id="name" class="form-control">
                                <option value="">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','select_service')->first()->custom_lang : $websiteLang->where('lang_key','select_service')->first()->default_lang }}</option>
                                @foreach ($services as $item)
                                    <option {{ $item->id==$video->service_id ? 'selected' : '' }} value="{{ $item->id }}">{{ $item->header }}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="link">{{ ap()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','link')->first()->custom_lang : $websiteLang->where('lang_key','link')->first()->default_lang }}</label>
                            <input type="text" name="link" class="form-control" value="{{ $video->link }}">
                        </div>

                        <div class="form-group">
                            <label for="status">{{ ap()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</label>
                            <select name="status" id="status" class="form-control">
                                <option {{ $video->status==1 ? 'selected':'' }} value="1">{{ ap()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}</option>
                                <option {{ $video->status==0 ? 'selected':'' }} value="0">{{ ap()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}</option>
                            </select>
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
            $("#deleteForm").attr("action",'{{ url("admin/service-video/") }}'+"/"+id)
        }



        function serviceVideoStatus(id){

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
                url:"{{url('/admin/service-video-status/')}}"+"/"+id,
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
