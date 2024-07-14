<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Laboratory extends Model
{
    use HasFactory,HasTranslations;

    protected $fillable = [
        'name',
        'phone',
        'address',
        'working_time',
        'map_url',
        'is_active'
    ];

    public $translatable = ['name'];
}
