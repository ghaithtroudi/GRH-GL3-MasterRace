<?php

use App\Model;

function checkPermission($resource)
{
	$user_permissions = \Auth::user()->role->permissions->keyBy('resource');
	return ($user_permissions->has($resource)) ? true : false;
}

function gmtToBDTime($gmt)
{
	$date = new DateTime($gmt);
	$date->setTimezone(new DateTimeZone(config('hrm.timezone'))); // +04

	return $date->format('d-m-Y h:i:s A'); 
}

function getCountryName(\GuzzleHttp\Client $client, $countryCode)
{
	$country = magentCall($client, 'directory/countries/'.$countryCode);

	return $country->full_name_english;
}

function getDaysInaYear($year,$day ='Friday', $format, $timezone='none')
{
    $timezone = 'none' ? config('hrm.timezone') : $timezone;
	$fridays = array();
    $startDate = new DateTime("{$year}-01-01 $day", new DateTimezone($timezone));
    $year++;
    $endDate = new DateTime("{$year}-01-01", new DateTimezone($timezone));
    $int = new DateInterval('P7D');
    foreach(new DatePeriod($startDate, $int, $endDate) as $d) {
        $fridays[]['date'] = $d->format($format);
    }

    return $fridays;
}


function employeeStatus($status)
{
    return Model\EmployeeStatus::where('id',$status)->first()->name;
}
function leavePayable($flag)
{
	return ($flag) ? 'Yes' : 'No';

}

function durationCalc($inTime, $outTime){
	$inTime = \Carbon\Carbon::createFromFormat("H:i:s",$inTime);
	$outTime = \Carbon\Carbon::createFromFormat("H:i:s",$outTime);

	$seconds = $inTime->diffInSeconds($outTime);

	return gmdate("H:i:s",$seconds);
}

function overtimeCalc($duration, $officeHour){
	$duration = explode(":",$duration);

	if ($duration[0] >= $officeHour){
		$hour = $duration[0] - $officeHour;

		return "$hour:$duration[1]:$duration[2]";
	}else{
		return "00:00:00";
	}
}

function lateTimeCalc($inTime, $bufferTime, $office_opening_time)
{
	$inTime = strtotime("1970-01-01 $inTime UTC");

	$bufferTime = strtotime("1970-01-01 $bufferTime UTC");

	$office_opening_time = strtotime("1970-01-01 $office_opening_time UTC");


	$late = $inTime-($bufferTime+$office_opening_time);
		
	if ($late>0){
		return gmdate("H:i:s",$late);
	}else {
		return "00:00:00";
	}


}

function spanClass($flag)
{
	return ($flag)? 'text-green' : 'text-danger';
}

function uploadMessage($flag){
	return ($flag)? 'Success' : 'Failed';
}

/**
 * @return array
 */
function months(){
	return [
		''=>'Select Month',
		'1'=>'Jan',
		'2'=>'Feb',
		'3'=>'Mar',
		'4'=>'Apr',
		'5'=>'May',
		'6'=>'Jun',
		'7'=>'Jul',
		'8'=>'Aug',
		'9'=>'Sep',
		'10'=>'Oct',
		'11'=>'Nov',
		'12'=>'Dec'
	];
}

function checkAttendance($attendance){
	return 0;
}

function createDateRangeArray($strDateFrom,$strDateTo)
{
	// takes two dates formatted as YYYY-MM-DD and creates an
	// inclusive array of the dates between the from and to dates.

	// could test validity of dates here but I'm already doing
	// that in the main script

	$aryRange=array();

	$iDateFrom=mktime(1,0,0,substr($strDateFrom,5,2),     substr($strDateFrom,8,2),substr($strDateFrom,0,4));
	$iDateTo=mktime(1,0,0,substr($strDateTo,5,2),     substr($strDateTo,8,2),substr($strDateTo,0,4));

	if ($iDateTo>=$iDateFrom)
	{
		array_push($aryRange,date('Y-m-d',$iDateFrom)); // first entry
		while ($iDateFrom<$iDateTo)
		{
			$iDateFrom+=86400; // add 24 hours
			array_push($aryRange,date('Y-m-d',$iDateFrom));
		}
	}
	return $aryRange;
}

function setTheStateColumn($state)
{
    //return '<button class="btn btn-primary gogo">Accept</button><button class="btn btn-danger gogo">Decline</button>';

    if( $state == 1)
    {
        return '<text class="text text-info">Pending</text>';
    }

    else if( $state == 2)
    {
        return '<text class="text text-success">Accepted</text>';
    }

    else if( $state == 3)
    {
        return '<text class="text text-danger">Declined</text>';
    }

    else if( $state == 4)
    {
        return '<text class="text text-yellow">Timed Out</text>';
    }
}

function setTheDoColumn($row)
{
    if( $row->state == 1 )
    {
        return '<span><a class="text-success" href="'.url('leave_application/deal?yes=1&app='.$row->id).
            '">A</a>&nbsp/&nbsp<a class="text-danger"href="'.url('leave_application/deal?yes=0&app='.$row->id).
            '">D</a></span>';
    }

    else
    {
        return '<span class="text text-info">Done</span>';
    }
}



