<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class HomeSection extends Model
{
    use HasTranslations;

    public $translatable = ['first_header', 'second_header', 'description'];
    protected $fillable=[
        'first_header','second_header','description','section_type','show_homepage','section_name','content_quantity'
    ];
}
