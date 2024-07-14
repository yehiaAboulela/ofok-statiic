<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class DoctorVerification extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public $doctor;
    public $template;
    public $subject;
    public function __construct($doctor,$template,$subject)
    {
        $this->doctor=$doctor;
        $this->template=$template;
        $this->subject=$subject;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $template=$this->template;
        $doctor=$this->doctor;
        return $this->subject($this->subject)->view('doctor.auth.email_verification',compact('doctor','template'));
    
    }
}
