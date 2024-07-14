<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ContactMessage extends Model
{
    protected $fillable=[
        'name','email','phone','subject','message','show_notification'
    ];
}
