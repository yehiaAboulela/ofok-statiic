@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ?  $websiteLang->where('lang_key','pending_order')->first()->custom_lang : $websiteLang->where('lang_key','pending_order')->first()->default_lang }}</title>
@endsection
@section('admin-content')

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Order Table</h6>
        </div>
        <div class="card-body" id="search-appointment">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th width="5%">{{ app()->currentLocale() == 'ar' ?  $websiteLang->where('lang_key','serial')->first()->custom_lang : $websiteLang->where('lang_key','serial')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ?  $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ?  $websiteLang->where('lang_key','email')->first()->custom_lang : $websiteLang->where('lang_key','email')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ?  $websiteLang->where('lang_key','phone')->first()->custom_lang : $websiteLang->where('lang_key','phone')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ?  $websiteLang->where('lang_key','order_id')->first()->custom_lang : $websiteLang->where('lang_key','order_id')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ?  $websiteLang->where('lang_key','date')->first()->custom_lang : $websiteLang->where('lang_key','date')->first()->default_lang }}</th>
                            <th width="5%">{{ app()->currentLocale() == 'ar' ?  $websiteLang->where('lang_key','payment')->first()->custom_lang : $websiteLang->where('lang_key','payment')->first()->default_lang }}</th>
                            <th width="10%">{{ app()->currentLocale() == 'ar' ?  $websiteLang->where('lang_key','action')->first()->custom_lang : $websiteLang->where('lang_key','action')->first()->default_lang }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($orders as $index => $item)
                        <tr>
                            <td>{{ ++$index }}</td>
                            <td>{{ ucfirst($item->user->name) }}</td>
                            <td>{{ $item->user->email }}</td>
                            <td>{{ $item->user->phone }}</td>
                            <td>{{ $item->order_id }}</td>
                            <td>{{ $item->created_at->format('m-d-Y') }}</td>
                            <td>
                                @if ($item->payment_status==0)
                                        <span class="badge badge-danger">Pending</span>
                                    @else
                                    <span class="badge badge-success">Success</span>
                                    @endif
                            </td>
                            <td>
                                <a  href="{{ route('admin.show.order',$item->id) }}" class="btn btn-success btn-sm"><i class="fas fa-eye"></i></a>
                            </td>
                        </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection

