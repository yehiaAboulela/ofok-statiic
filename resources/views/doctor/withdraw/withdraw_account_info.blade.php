<div class="alert alert-primary" role="alert">
    <h5>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_limit')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_limit')->first()->default_lang }} : {{ $setting->currency_icon }}{{ $method->min_amount }} - {{ $setting->currency_icon }}{{ $method->max_amount }}</h5>
    <h5>{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','withdraw_charge')->first()->custom_lang : $websiteLang->where('lang_key','withdraw_charge')->first()->default_lang }} : {{ $method->withdraw_charge }}%</h5>
    {!! clean($method->description) !!}
</div>
