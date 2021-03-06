<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Section extends Model
{
    

    public function department()
    {
    	return $this->belongsTo("App\\Model\\Department");
    }

    public function Designations()
    {
    	return $this->hasMany("App\\Model\\Designation");
    }

    public function lines()
    {
    	return $this->hasMany("App\\Model\\Line");
    }
}
