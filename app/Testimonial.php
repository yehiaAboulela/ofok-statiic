<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Testimonial extends Model
{
    use HasTranslations;
    public $translatable = ['name', 'designation', 'description'];
    protected $fillable=[
        'name','image','designation','description','status','show_homepage'
    ];
}
