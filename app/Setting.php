<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Setting extends Model
{
    use HasTranslations;

    public $translatable = ['slider_heading','slider_description', 'cookie_text', 'cookie_button_text', 'subscribe_heading', 'subscribe_description'];
    protected $fillable=[
        'logo','email','subscribe_heading','subscribe_description','show','save_contact_message',
        'comment_type','favicon','subscribe_heading','subscribe_description','patient_can_register','facebook_comment_script',
        'preloader','preloader_image',
        'allow_cookie_consent',
        'cookie_text',
        'cookie_button_text','captcha_key','allow_captcha',
        'captcha_secret','live_chat',
        'livechat_script',
        'text_direction','currency_icon','currency_name','timezone','google_analytic','google_analytic_code','theme_one','theme_two','prescription_phone','prescription_email','prenotification_hour'
    ];

//    public function getSliderHeadingAttribute()
//    {
//        return app()->currentLocale() == 'ar' ? $this->getTranslation('slider_heading', 'ar') : $this->getTranslation('slider_heading', 'en');
//    }
}
