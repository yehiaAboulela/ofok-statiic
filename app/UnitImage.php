<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UnitImage extends Model
{
    protected $fillable=[
        'units_id','image','small_image',
        'large_image'
    ];
}
