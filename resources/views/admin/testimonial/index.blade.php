@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','testi')->first()->custom_lang : $websiteLang->where('lang_key','testi')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="#" data-toggle="modal" data-target="#addTestimonial" class="btn btn-success"><i class="fas fa-plus" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','create')->first()->custom_lang : $websiteLang->where('lang_key','create')->first()->default_lang }} </a></h1>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','testi_table')->first()->custom_lang : $websiteLang->where('lang_key','testi_table')->first()->default_lang }}</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th width="5%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','serial')->first()->custom_lang : $websiteLang->where('lang_key','serial')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }}</th>
                            <th width="10%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','img')->first()->custom_lang : $websiteLang->where('lang_key','img')->first()->default_lang }}</th>
                            <th width="10%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','designation')->first()->custom_lang : $websiteLang->where('lang_key','designation')->first()->default_lang }}</th>
                            <th width="40%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','des')->first()->custom_lang : $websiteLang->where('lang_key','des')->first()->default_lang }}</th>
                            <th width="10%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</th>
                            <th width="10%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','action')->first()->custom_lang : $websiteLang->where('lang_key','action')->first()->default_lang }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($testimonials as $index => $item)
                        <tr>
                            <td>{{ ++$index }}</td>
                            <td>{{ $item->name }}</td>
                            <td><img src="{{ url($item->image)}}" alt="testimonial image"></td>
                            <td>{{ $item->designation }}</td>
                            <td>{{ $item->description }}</td>
                            <td>
                                @if ($item->status==1)
                                    <a href="" onclick="testimonialStatus({{ $item->id }})"><input type="checkbox" checked data-toggle="toggle" data-on="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}" data-off="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}" data-onstyle="success" data-offstyle="danger"></a>
                                @else
                                    <a href="" onclick="testimonialStatus({{ $item->id }})"><input type="checkbox" data-toggle="toggle" data-on="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}" data-off="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}" data-onstyle="success" data-offstyle="danger"></a>

                                @endif
                            </td>
                            <td>
                                <a href="#" data-toggle="modal" data-target="#updateFaq-{{ $item->id }}" class="btn btn-primary btn-sm"><i class="fas fa-edit"></i></a>
                                <a data-toggle="modal" data-target="#deleteModal" href="javascript:;" onclick="deleteData({{ $item->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash    "></i></a>


                            </td>
                        </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- create new testimonial Modal -->
    <div class="modal fade" id="addTestimonial" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                    <div class="modal-header">
                            <h5 class="modal-title">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','testi_form')->first()->custom_lang : $websiteLang->where('lang_key','testi_form')->first()->default_lang }}</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                        </div>
                <div class="modal-body">
                    <div class="container-fluid">

                    <form action="{{ route('admin.testimonial.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }}</label>
                                    <input type="text" class="form-control" name="name" id="question" value="{{ old('name') }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name_ar">{{ __('dashboard.testimonial.Name In Arabic') }}</label>
                                    <input type="text" class="form-control" name="name_ar" id="question" value="{{ old('name_ar') }}">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="designation">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','designation')->first()->custom_lang : $websiteLang->where('lang_key','designation')->first()->default_lang }}</label>
                                    <input type="text" class="form-control" name="designation" id="designation" value="{{ old('designation') }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="designation_ar">{{ __('dashboard.testimonial.Designation In Arabic') }}</label>
                                    <input type="text" class="form-control" name="designation_ar" id="designation_ar" value="{{ old('designation_ar') }}">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="image">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','img')->first()->custom_lang : $websiteLang->where('lang_key','img')->first()->default_lang }}</label>
                            <input type="file" class="form-control" name="image" id="image">
                        </div>

                        <div class="form-group">
                            <label for="description">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','des')->first()->custom_lang : $websiteLang->where('lang_key','des')->first()->default_lang }}</label>
                            <textarea class="form-control" id="description" name="description" rows="5" cols="30">{{ old('description') }}</textarea>
                        </div>

                        <div class="form-group">
                            <label for="description_ar">{{ __('dashboard.testimonial.Designation In Arabic') }}</label>
                            <textarea class="form-control" id="description_ar" name="description_ar" rows="5" cols="30">{{ old('description_ar') }}</textarea>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="status">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</label>
                                    <select name="status" id="status" class="form-control">
                                        <option value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}</option>
                                        <option value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="show_homepage">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','show_homepage')->first()->custom_lang : $websiteLang->where('lang_key','show_homepage')->first()->default_lang }}</label>
                                    <select name="show_homepage" id="show_homepage" class="form-control">
                                        <option value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','no')->first()->custom_lang : $websiteLang->where('lang_key','no')->first()->default_lang }}</option>
                                        <option value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','yes')->first()->custom_lang : $websiteLang->where('lang_key','yes')->first()->default_lang }}</option>
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

     <!-- update testimonial Modal -->
     @foreach ($testimonials as $item)
    <div class="modal fade" id="updateFaq-{{ $item->id }}" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                    <div class="modal-header">
                            <h5 class="modal-title">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','testi_form')->first()->custom_lang : $websiteLang->where('lang_key','testi_form')->first()->default_lang }}</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                        </div>
                <div class="modal-body">
                    <div class="container-fluid">

                        <form action="{{ route('admin.testimonial.update',$item->id) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('patch')

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }}</label>
                                        <input type="text" class="form-control" name="name" id="question" value="{{ $item->getTranslation('name', 'en') }}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name_ar">{{ __('dashboard.testimonial.Name In Arabic') }}</label>
                                        <input type="text" class="form-control" name="name_ar" id="question" value="{{ $item->getTranslation('name', 'ar') }}">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="designation">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','designation')->first()->custom_lang : $websiteLang->where('lang_key','designation')->first()->default_lang }}</label>
                                        <input type="text" class="form-control" name="designation" id="designation" value="{{ $item->getTranslation('designation', 'en') }}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="designation_ar">{{ __('dashboard.testimonial.Designation In Arabic') }}</label>
                                        <input type="text" class="form-control" name="designation_ar" id="designation_ar" value="{{ $item->getTranslation('designation', 'ar') }}">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="image">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','img')->first()->custom_lang : $websiteLang->where('lang_key','img')->first()->default_lang }}</label>
                                        <input type="file" class="form-control" name="image" id="image">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="image">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','exist_img')->first()->custom_lang : $websiteLang->where('lang_key','exist_img')->first()->default_lang }}</label>
                                        <img src="{{ url($item->image) }}" alt="testimonial image">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="description">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','des')->first()->custom_lang : $websiteLang->where('lang_key','des')->first()->default_lang }}</label>
                                <textarea class="form-control" id="description" name="description" rows="5" cols="30">{{ $item->getTranslation('description', 'en') }}</textarea>
                            </div>

                            <div class="form-group">
                                <label for="description_ar">{{ __('dashboard.testimonial.Designation In Arabic') }}</label>
                                <textarea class="form-control" id="description_ar" name="description_ar" rows="5" cols="30">{{ $item->getTranslation('description', 'ar') }}</textarea>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="status">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</label>
                                        <select name="status" id="status" class="form-control">
                                            <option {{ $item->status==1 ? 'selected' : ''}} value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}</option>
                                            <option {{ $item->status==0 ? 'selected' : ''}} value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="show_homepage">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','show_homepage')->first()->custom_lang : $websiteLang->where('lang_key','show_homepage')->first()->default_lang }}</label>
                                        <select name="show_homepage" id="show_homepage" class="form-control">
                                            <option {{ $item->show_homepage==0 ? 'selected' : ''}} value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','no')->first()->custom_lang : $websiteLang->where('lang_key','no')->first()->default_lang }}</option>
                                            <option {{ $item->show_homepage==1 ? 'selected' : ''}} value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','yes')->first()->custom_lang : $websiteLang->where('lang_key','yes')->first()->default_lang }}</option>
                                        </select>
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
            $("#deleteForm").attr("action",'{{ url("/admin/testimonial/") }}'+"/"+id)
        }

        function testimonialStatus(id){

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
                url:"{{url('/admin/testimonial-status/')}}"+"/"+id,
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