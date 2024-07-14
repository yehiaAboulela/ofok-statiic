<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Location extends Model
{
    use HasTranslations;

    public $translatable = ['location'];
    protected $fillable=[
        'location','status'
    ];
}
