<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class ContactInformation extends Model
{
    use HasTranslations;

    public $translatable = ['header', 'description', 'address', 'about', 'copyright'];
    protected $fillable=[
        'header','description','phones','emails','address','about','map_embed_code','copyright'
    ];
}
