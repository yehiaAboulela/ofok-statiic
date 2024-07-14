<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Investigation extends Model
{
    use HasFactory,HasTranslations;

    protected $fillable = ['name','price', 'is_active'];
    public $translatable = ['name'];

}
