<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class DepartmentFaq extends Model
{
    use HasTranslations;

    public $translatable = ['question', 'answer'];
    protected $fillable=[
        'department_id','question','answer','status',
    ];

    public function department(){
        return $this->belongsTo(Department::class);
    }
}
