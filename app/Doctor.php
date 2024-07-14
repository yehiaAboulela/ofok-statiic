<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Spatie\Translatable\HasTranslations;

class Doctor extends Authenticatable
{
    use Notifiable, HasTranslations;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public $translatable = ['name', 'designations', 'about', 'address', 'educations', 'experience', 'qualifications'];
    protected $fillable = [
        'name','slug','email','phone','password','designations','image','fee','department_id','about','address','educations','experience','qualifications','status','show_homepage','forget_password_token','location_id','facebook','twitter','linkedin','seo_title','seo_description'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


    public function department(){
        return $this->belongsTo(Department::class);
    }

    public function location(){
        return $this->belongsTo(Location::class);
    }

    public function schedules(){
        return $this->hasMany(Schedule::class)->where('status',1);
    }

    public function appointments(){
        return $this->hasMany(Appointment::class);
    }

}
