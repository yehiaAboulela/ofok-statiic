<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class LabPackage extends Model
{
    use HasFactory, HasTranslations;

    protected $fillable = ['name', 'price', 'is_active', 'investigations', 'laboratory_id'];
    public $translatable = ['name'];
    protected $casts = ['investigations' => 'array'];
}
