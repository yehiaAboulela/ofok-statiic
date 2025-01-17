<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class DoctorWithdrawApproval extends Mailable
{
    use Queueable, SerializesModels;

    public $subject;
    public $template;
    public function __construct($subject, $template)
    {
        $this->subject = $subject;
        $this->template = $template;
    }

    public function build()
    {
        $subject = $this->subject;
        $template = $this->template;

        return $this->subject($this->subject)->view('admin.doctor_withdraw.doctor_withdraw_approval',compact('template','subject'));
    }
}
