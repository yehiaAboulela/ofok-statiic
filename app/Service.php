<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Service extends Model
{
    use HasTranslations;
    public $translatable = ['header', 'sort_description', 'long_description'];
    protected $fillable=[
        'header','icon','sort_description','long_description','show_homepage','status','slug','seo_title','seo_description'
    ];

    public function images(){
        return $this->hasMany(ServiceImage::class);
    }

    public function faqs(){
        return $this->hasMany(ServiceFaq::class);
    }

    public function videos(){
        return $this->hasMany(Video::class);
    }

}
