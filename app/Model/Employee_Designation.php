<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Employee_Designation extends Model
{
    protected $guarded = ['id'];

    public $table = 'employee_designation';

    public function employee()
    {
        $this->belongsTo('App\Model\Employee');
    }

    public function designation()
    {
        $this->belongsTo('App\Model\Employee');
    }
}
