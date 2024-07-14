<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BannerImage extends Model
{
    protected $fillable=[
    'admin_login','doctor_login','about_us','subscribe_us','doctor','service','department','testimonial','faq','contact','profile','login','payment','overview','about_us_bg','custom_page','blog','terms_and_condition','privacy_and_policy','default_profile'
    ];
}
