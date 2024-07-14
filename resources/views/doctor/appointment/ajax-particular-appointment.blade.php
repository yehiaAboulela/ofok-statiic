@if ($appointments->count()!=0)
<div class="table-responsive">
    <table class="table table-bordered" width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width="5%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','serial')->first()->custom_lang : $websiteLang->where('lang_key','serial')->first()->default_lang }}</th>
                <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }}</th>
                <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','email')->first()->custom_lang : $websiteLang->where('lang_key','email')->first()->default_lang }}</th>
                <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','phone')->first()->custom_lang : $websiteLang->where('lang_key','phone')->first()->default_lang }}</th>
                <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','date')->first()->custom_lang : $websiteLang->where('lang_key','date')->first()->default_lang }}</th>
                <th width="25%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','schedule')->first()->custom_lang : $websiteLang->where('lang_key','schedule')->first()->default_lang }}</th>
                <th width="5%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','payment')->first()->custom_lang : $websiteLang->where('lang_key','payment')->first()->default_lang }}</th>
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
                <td>{{ strtoupper($item->schedule->start_time).'-'.strtoupper($item->schedule->end_time) }}</td>
                <td>
                    @if ($item->payment_status==0)
                            <span class="badge badge-danger">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','pending')->first()->custom_lang : $websiteLang->where('lang_key','pending')->first()->default_lang }}</span>
                        @else
                        <span class="badge badge-success">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','success')->first()->custom_lang : $websiteLang->where('lang_key','success')->first()->default_lang }}</span>
                        @endif
                </td>
                <td>
                    <a  href="{{ route('doctor.treatment',$item->id) }}" class="btn btn-success btn-sm"><i class="fas fa-eye"></i></a>
                </td>
            </tr>
            @endforeach

        </tbody>
    </table>
</div>
@else
    <h3 class="text-danger text-center">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','app_not_found')->first()->custom_lang : $websiteLang->where('lang_key','app_not_found')->first()->default_lang }}</h3>
@endif
