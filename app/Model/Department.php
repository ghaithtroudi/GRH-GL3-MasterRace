<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    

    public function branch()
    {
    	return $this->belongsTo("App\\Model\\Branch");
    }

    public function sections()
    {
    	return $this->hasMany("App\\Model\\Section");
    }

    public function designations()
    {
    	return $this->hasMany('App\Model\Designation');
    }
}
