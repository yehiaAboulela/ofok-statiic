<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Overview extends Model
{
    use HasTranslations;

    public $translatable = ['name'];
    protected $fillable=[
        'name','qty','icon','status',
    ];
}
