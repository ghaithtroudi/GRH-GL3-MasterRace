<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Carbon\Carbon;

class Holiday extends Model
{
    //use SoftDeletes;

    public $table = 'holidays';
    public $guarded = ['id'];

    /*public function getDateAttribute($value)
    {
        return Carbon::parse($value)->format('d/m/Y');
    }*/

    /*public function setDateAttribute($value)
    {
        $this->attributes['date'] = Carbon::createFromFormat('d/m/Y', $value)->toDateString();
    }*/

    public function holiday_type()
    {
        return $this->belongsTo('App\Model\HolidayType');
    }

    /*public static function leaveType()
{
    return [
        '1' =>'Weekly',
        '2' => 'Government'
    ];
}*/
}
