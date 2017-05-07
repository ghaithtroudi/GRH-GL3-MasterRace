<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class EmployeeStatus extends Model
{
    public $guarded = ['id'];

    public function employees()
    {
        return $this->hasMany('App\Model\Employee','status');
    }
}
