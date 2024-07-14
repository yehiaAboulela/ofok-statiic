<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class About extends Model
{
    use HasTranslations;

    public $translatable = ['about_description', 'mission_description', 'vision_description'];
    protected $fillable=[
        'sort_description','about_description','about_image','mission_description','mission_image','vision_description','vision_image','background_image'
    ];
}
