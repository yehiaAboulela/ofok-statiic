<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class WorkFaq extends Model
{
    protected $fillable=[
        'question', 'question_ar','answer', 'answer_ar','status',
    ];
}
