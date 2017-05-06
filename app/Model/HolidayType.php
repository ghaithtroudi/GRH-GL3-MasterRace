<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;


class HolidayType extends Model
{
    //protected $guarded = ['id'];

    public function holidays()
    {
        return $this->belongsToMany('App\Model\Holiday');
    }
}
