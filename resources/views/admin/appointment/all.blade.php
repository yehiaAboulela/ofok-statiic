@extends('layouts.admin.layout')
@section('title')
<title>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','app')->first()->custom_lang : $websiteLang->where('lang_key','app')->first()->default_lang }}</title>
@endsection
@section('admin-content')
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','app_history')->first()->custom_lang : $websiteLang->where('lang_key','app_history')->first()->default_lang }}</h6>
        </div>
        <div class="card-body" id="search-appointment">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th width="5%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','serial')->first()->custom_lang : $websiteLang->where('lang_key','serial')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }}</th>
                            <th width="10%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','email')->first()->custom_lang : $websiteLang->where('lang_key','email')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','phone')->first()->custom_lang : $websiteLang->where('lang_key','phone')->first()->default_lang }}</th>
                            <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','date')->first()->custom_lang : $websiteLang->where('lang_key','date')->first()->default_lang }}</th>
                            <th width="25%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','schedule')->first()->custom_lang : $websiteLang->where('lang_key','schedule')->first()->default_lang }}</th>
                            <th width="5%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','payment')->first()->custom_lang : $websiteLang->where('lang_key','payment')->first()->default_lang }}</th>
                            <th width="5%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','treated')->first()->custom_lang : $websiteLang->where('lang_key','treated')->first()->default_lang }}</th>
                            <th width="10%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','action')->first()->custom_lang : $websiteLang->where('lang_key','action')->first()->default_lang }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($appointments as $index => $item)
                        <tr>
                            <td>{{ ++$index }}</td>
                            <td>{{ ucfirst($item->user->name) }}</td>
                            <td>{{ $item->user->email }}</td>
                            <td>{{ $item->user->phone }}</td>
                            <td>{{ date('m-d-Y',strtotime($item->date)) }}</td>
                            <td>{{ optional($item->schedule)->start_time.'-'.optional($item->schedule)->end_time }}</td>
                            <td>
                                @if ($item->payment_status==0)
                                        <span class="badge badge-danger">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','pending')->first()->custom_lang : $websiteLang->where('lang_key','pending')->first()->default_lang }}</span>
                                    @else
                                    <span class="badge badge-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','success')->first()->custom_lang : $websiteLang->where('lang_key','success')->first()->default_lang }}</span>
                                    @endif
                            </td>
                            <td>
                                @if ($item->already_treated==0)
                                        <span class="badge badge-danger">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','pending')->first()->custom_lang : $websiteLang->where('lang_key','pending')->first()->default_lang }}</span>
                                    @else
                                    <span class="badge badge-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','success')->first()->custom_lang : $websiteLang->where('lang_key','success')->first()->default_lang }}</span>
                                    @endif
                            </td>

                            <td>
                                <a  href="{{ route('admin.appointment.show',$item->id) }}" class="btn btn-success btn-sm"><i class="fas fa-eye"></i></a>
                            </td>
                        </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection

