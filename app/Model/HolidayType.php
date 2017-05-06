<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;


class HolidayType extends Model
{
    public $guarded = ['id'];

    public function holidays()
    {
        return $this->HasMany('App\Model\Holiday','type');
    }
}
