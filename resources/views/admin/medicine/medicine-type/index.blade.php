@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','medicine_type')->first()->custom_lang : $websiteLang->where('lang_key','medicine_type')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800 d-inline"><a data-toggle="modal" data-target="#createMedicineType" class="btn btn-primary custom_danger_btn"><i class="fas fa-plus" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','create')->first()->custom_lang : $websiteLang->where('lang_key','create')->first()->default_lang }} </a></h1>
    <!-- department table -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','medicine_type')->first()->custom_lang : $websiteLang->where('lang_key','medicine_type')->first()->default_lang }}</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th width="5%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','serial')->first()->custom_lang : $websiteLang->where('lang_key','serial')->first()->default_lang }}</th>
                            <th width="25%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }}</th>
                            <th width="10%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</th>
                            <th width="20%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','action')->first()->custom_lang : $websiteLang->where('lang_key','action')->first()->default_lang }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($medicinetypes as $index => $item)
                        <tr>
                            <td>{{ ++$index }}</td>
                            <td>{{ $item->type }}</td>
                            <td>
                                @if ($item->status==1)
                                    <a href="" onclick="medicineTypeStatus({{ $item->id }})"><input type="checkbox" checked data-toggle="toggle" data-on="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}" data-off="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}" data-onstyle="success" data-offstyle="danger"></a>
                                @else
                                    <a href="" onclick="medicineTypeStatus({{ $item->id }})"><input type="checkbox" data-toggle="toggle" data-on="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}" data-off="{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}" data-onstyle="success" data-offstyle="danger"></a>

                                @endif
                            </td>
                            <td>
                                <a href="#" data-toggle="modal" data-target="#updateMedicine-{{ $item->id }}" class="btn btn-primary btn-sm"><i class="fas fa-edit"></i></a>
                                <a data-toggle="modal" data-target="#deleteModal" href="javascript:;" onclick="deleteData({{ $item->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash    "></i></a>
                            </td>
                        </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </div>

    {{-- create medicine type modal --}}
    <div class="modal fade" id="createMedicineType" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                    <div class="modal-header">
                            <h5 class="modal-title">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','medicine_type_form')->first()->custom_lang : $websiteLang->where('lang_key','medicine_type_form')->first()->default_lang }}</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                        </div>
                <div class="modal-body">
                    <div class="container-fluid">

                    <form action="{{ route('admin.medicine-type.store') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="type">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','medicine_type')->first()->custom_lang : $websiteLang->where('lang_key','medicine_type')->first()->default_lang }}</label>
                            <input type="text" class="form-control" name="type" id="type" value="{{ old('type') }}">
                        </div>
                        <div class="form-group">
                            <label for="type_ar">{{ __('dashboard.medicine.Type In Arabic') }}</label>
                            <input type="text" class="form-control" name="type_ar" id="type_ar" value="{{ old('type_ar') }}">
                        </div>
                        <div class="form-group">
                            <label for="status">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</label>
                            <select name="status" id="status" class="form-control">
                                <option value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}</option>
                                <option value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}</option>
                            </select>
                        </div>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','close')->first()->custom_lang : $websiteLang->where('lang_key','close')->first()->default_lang }}</button>
                        <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','save')->first()->custom_lang : $websiteLang->where('lang_key','save')->first()->default_lang }}</button>
                    </form>
                    </div>
                </div>

            </div>
        </div>
    </div>

    @foreach ($medicinetypes as $medicine)
    <!-- Modal -->
    <div class="modal fade" id="updateMedicine-{{ $medicine->id }}" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                    <div class="modal-header">
                            <h5 class="modal-title">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','medicine_type_form')->first()->custom_lang : $websiteLang->where('lang_key','medicine_type_form')->first()->default_lang }}</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                        </div>
                <div class="modal-body">
                    <div class="container-fluid">

                    <form action="{{ route('admin.medicine-type.update',$medicine->id) }}" method="POST">
                        @csrf
                        @method('patch')
                        <div class="form-group">
                            <label for="type">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','medicine_type')->first()->custom_lang : $websiteLang->where('lang_key','medicine_type')->first()->default_lang }}</label>
                            <input type="text" class="form-control" name="type" id="type" value="{{ $medicine->getTranslation('type', 'en') }}">
                        </div>
                        <div class="form-group">
                            <label for="type_ar">{{ __('dashboard.medicine.Type In Arabic') }}</label>
                            <input type="text" class="form-control" name="type_ar" id="type_ar" value="{{ $medicine->getTranslation('type', 'ar') }}">
                        </div>
                        <div class="form-group">
                            <label for="status">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</label>
                            <select name="status" id="status" class="form-control">
                                <option {{ $medicine->status ==1 ? 'selected' :'' }} value="1">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','active')->first()->custom_lang : $websiteLang->where('lang_key','active')->first()->default_lang }}</option>
                                <option {{ $medicine->status ==0 ? 'selected' :'' }} value="0">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','inactive')->first()->custom_lang : $websiteLang->where('lang_key','inactive')->first()->default_lang }}</option>
                            </select>
                        </div>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','close')->first()->custom_lang : $websiteLang->where('lang_key','close')->first()->default_lang }}</button>
                        <button type="submit" class="btn btn-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','close')->first()->custom_lang : $websiteLang->where('lang_key','close')->first()->default_lang }}</button>
                    </form>
                    </div>
                </div>

            </div>
        </div>
    </div>

    @endforeach

    <script>
        function deleteData(id){
            $("#deleteForm").attr("action",'{{ url("admin/medicine-type/") }}'+"/"+id)
        }

        function medicineTypeStatus(id){

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
                url:"{{url('/admin/medicine-type-status/')}}"+"/"+id,
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
