@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','show_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','show_withdraw')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('admin.doctor-withdraw') }}" class="btn btn-primary"><i class="fas fa-list" aria-hidden="true"></i> {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','doctor_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','doctor_withdraw')->first()->default_lang }} </a></h1>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','doctor_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','doctor_withdraw')->first()->default_lang }}</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <tr>
                        <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','doctor')->first()->custom_lang : $websiteLang->where('lang_key','doctor')->first()->default_lang }}</td>
                        <td width="50%">
                            <a target="__blank" href="{{ url('/doctor-details/'.$withdraw->doctor->slug) }}">{{ $withdraw->doctor->name }}</a>
                        </td>
                    </tr>
                    <tr>
                        <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_method')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_method')->first()->default_lang }}</td>
                        <td width="50%">{{ $withdraw->method->name }}</td>
                    </tr>

                    <tr>
                        <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_charge')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_charge')->first()->default_lang }}</td>
                        <td width="50%">{{ $withdraw->withdraw_charge }}%</td>
                    </tr>

                    <tr>
                        <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_charge_amount')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_charge_amount')->first()->default_lang }}</td>
                        <td width="50%">{{ $setting->currency_icon }}{{ $withdraw->total_amount - $withdraw->withdraw_amount }}</td>
                    </tr>

                    <tr>
                        <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','total_amount')->first()->custom_lang : $websiteLang->where('lang_key','total_amount')->first()->default_lang }}</td>
                        <td width="50%">{{ $setting->currency_icon }}{{ $withdraw->total_amount }}</td>
                    </tr>
                    <tr>
                        <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_amount')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_amount')->first()->default_lang }}</td>
                        <td width="50%">{{ $setting->currency_icon }}{{ $withdraw->withdraw_amount }}</td>
                    </tr>
                    <tr>
                        <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','status')->first()->custom_lang : $websiteLang->where('lang_key','status')->first()->default_lang }}</td>
                        <td width="50%">
                            @if ($withdraw->status==1)
                            <span class="badge badge-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','success')->first()->custom_lang : $websiteLang->where('lang_key','success')->first()->default_lang }}</span>
                            @else
                            <span class="badge badge-danger">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','pending')->first()->custom_lang : $websiteLang->where('lang_key','pending')->first()->default_lang }}</span>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','requested_date')->first()->custom_lang : $websiteLang->where('lang_key','requested_date')->first()->default_lang }}</td>
                        <td width="50%">{{ $withdraw->created_at->format('Y-m-d') }}</td>
                    </tr>
                    @if ($withdraw->status==1)
                        <tr>
                            <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','approved_date')->first()->custom_lang : $websiteLang->where('lang_key','approved_date')->first()->default_lang }}</td>
                            <td width="50%">{{ $withdraw->approved_date }}</td>
                        </tr>
                    @endif

                    <tr>
                        <td width="50%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','account_information')->first()->custom_lang : $websiteLang->where('lang_key','account_information')->first()->default_lang }}</td>
                        <td width="50%">
                            {!! clean(nl2br($withdraw->account_info)) !!}
                        </td>
                    </tr>
                </table>
            </div>
            <div class="withdraw-status-box mt-3">
                @if ($withdraw->status == 0)
                    <a href="javascript:;" data-toggle="modal" data-target="#withdrawApproved" class="btn btn-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','approve_withdraw')->first()->custom_lang : $websiteLang->where('lang_key','approve_withdraw')->first()->default_lang }}</i></a>
                @endif

                <a href="javascript:;" data-toggle="modal" data-target="#deleteModal" class="btn btn-danger" onclick="deleteData({{ $withdraw->id }})">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','delete_withdraw_request')->first()->custom_lang : $websiteLang->where('lang_key','delete_withdraw_request')->first()->default_lang }}</a>
            </div>
        </div>
    </div>

    <div class="modal fade" tabindex="-1" role="dialog" id="withdrawApproved">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_approved_confirmation')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_approved_confirmation')->first()->default_lang }}</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <p>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','are_you_sure_approved_this_withdraw_request')->first()->custom_lang : $websiteLang->where('lang_key','are_you_sure_approved_this_withdraw_request')->first()->default_lang }}</p>
            </div>
            <div class="modal-footer bg-whitesmoke br">
                <form action="{{ route('admin.approved-doctor-withdraw',$withdraw->id) }}" method="POST">
                    @csrf
                    @method("PUT")
                    <button type="button" class="btn btn-danger" data-dismiss="modal">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','close')->first()->custom_lang : $websiteLang->where('lang_key','close')->first()->default_lang }}</button>
                    <button type="submit" class="btn btn-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','yes_approve')->first()->custom_lang : $websiteLang->where('lang_key','yes_approve')->first()->default_lang }}</button>
                </form>
            </div>
          </div>
        </div>
      </div>


    <script>
        function deleteData(id){
            $("#deleteForm").attr("action",'{{ url("admin/delete-doctor-withdraw/") }}'+"/"+id)
        }
    </script>
@endsection
