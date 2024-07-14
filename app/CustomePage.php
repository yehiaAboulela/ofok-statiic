<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CustomePage extends Model
{
    protected $fillable=[
        'page_name','slug','description','status','seo_title','seo_description'
    ];
}
