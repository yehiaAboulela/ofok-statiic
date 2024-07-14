<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MyWithdraw extends Model
{
    use HasFactory;
    public function doctor(){
        return $this->belongsTo(Doctor::class,'doctor_id');
    }

    public function method(){
        return $this->belongsTo(WithdrawMethod::class,'method_id');
    }
}
