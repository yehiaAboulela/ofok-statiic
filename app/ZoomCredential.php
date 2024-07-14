<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ZoomCredential extends Model
{
    protected $fillable=[
        'doctor_id','zoom_api_key','zoom_api_secret',
    ];
}
