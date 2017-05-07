<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class LeaveApplication extends Model
{
    public $guarded = ['id'];

    public $table = 'leave_applications';

    public function employee()
    {
        return $this->belongsTo('App\Model\Employee');
    }

    public function leave()
    {
        return $this->hasOne('App\Model\Leave','leave_app_id');
    }

    public function leave_type()
    {
        return $this->belongsTo('App\Model\LeaveType');
    }
}
