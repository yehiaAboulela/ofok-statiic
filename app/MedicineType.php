<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class MedicineType extends Model
{
    use HasTranslations;

    public $translatable = ['type'];
    protected $fillable=[
        'type','status'
    ];
}
