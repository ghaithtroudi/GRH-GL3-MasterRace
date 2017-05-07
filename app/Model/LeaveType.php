<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class LeaveType extends Model
{
    public $guarded = ['id'];

    public $table = 'leave_types';

    public function leaves()
    {
    	return $this->hasMany("App\\Model\\Leave",'leave_type');
    }

    public function leave_applications()
    {
        return $this->hasMany('App\Model\LeaveApplication','leave_type');
    }


    /*public function leaveEmployee()
    {
    	return $this->hasMany("App\\Model\\leaveEmployee");
    }*/
}
