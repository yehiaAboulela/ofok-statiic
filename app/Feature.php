<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Feature extends Model
{
    use HasTranslations;

    public $translatable = ['title', 'description'];
    protected $fillable=[
        'title','description','background_image','logo','status',
    ];
}
