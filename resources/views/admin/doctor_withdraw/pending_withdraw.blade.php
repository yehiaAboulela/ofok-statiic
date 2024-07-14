@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','doctor_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','doctor_withdraw')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- Page Heading -->
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','doctor_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','doctor_withdraw')->first()->default_lang }}</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th width="5%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','serial')->first()->custom_lang : $websiteLang->where('lang_key','serial')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','doctor')->first()->custom_lang : $websiteLang->where('lang_key','doctor')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_method')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_method')->first()->default_lang }}</th>
                            <th width="5%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','charge')->first()->custom_lang : $websiteLang->where('lang_key','charge')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','total_amount')->first()->custom_lang : $websiteLang->where('lang_key','total_amount')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_amount')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_amount')->first()->default_lang }}</th>
                            <th width="10%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</th>
                            <th width="10%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','action')->first()->custom_lang : $websiteLang->where('lang_key','action')->first()->default_lang }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($withdraws as $index => $withdraw)
                        <tr>
                            <td>{{ ++$index }}</td>
                            <td><a target="__blank" href="{{ url('/doctor-details/'.$withdraw->doctor->slug) }}">{{ $withdraw->doctor->name }}</a></td>
                            <td>{{ $withdraw->method->name }}</td>
                            <td>{{ $setting->currency_icon }}{{ $withdraw->total_amount - $withdraw->withdraw_amount }}</td>
                            <td>{{ $setting->currency_icon }}{{ $withdraw->total_amount }}</td>
                            <td>{{ $setting->currency_icon }}{{ $withdraw->withdraw_amount }}</td>
                            <td>
                                @if ($withdraw->status==1)
                                <span class="badge badge-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','success')->first()->custom_lang : $websiteLang->where('lang_key','success')->first()->default_lang }}</span>
                                @else
                                <span class="badge badge-danger">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','pending')->first()->custom_lang : $websiteLang->where('lang_key','pending')->first()->default_lang }}</span>
                                @endif
                            </td>
                            <td>
                                <a href="{{ route('admin.show-doctor-withdraw', $withdraw->id) }}" class="btn btn-primary btn-sm"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                <a data-toggle="modal" data-target="#deleteModal" href="javascript:;" onclick="deleteData({{ $withdraw->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a>
                            </td>
                        </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script>
        function deleteData(id){
            $("#deleteForm").attr("action",'{{ url("admin/delete-doctor-withdraw/") }}'+"/"+id)
        }
    </script>
@endsection
