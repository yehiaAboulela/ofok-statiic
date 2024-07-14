<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\MeetingHistory;

use App\ManageText;
use App\ValidationText;
use App\NotificationText;

class AdminMeetingController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function meetingHistory(){
        $histories=MeetingHistory::OrderBy('id','desc')->get();
        $websiteLang=ManageText::all();
        return view('admin.zoom.meeting-history',compact('histories','websiteLang'));
    }
}
