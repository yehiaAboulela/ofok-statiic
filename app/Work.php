<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Work extends Model
{
    protected $fillable=[
        'image','video','title','title_ar','description','description_ar'
    ];


}
