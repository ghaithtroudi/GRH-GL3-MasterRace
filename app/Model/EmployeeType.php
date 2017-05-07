<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class EmployeeType extends Model
{
    public $guarded = ['id'];

    public function employees()
    {
        return $this->HasMany('App\Model\Employee','type');
    }
}
