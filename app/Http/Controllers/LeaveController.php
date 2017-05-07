<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Model\Leave;
use App\Model\LeaveApplication;
use App\Model\LeaveType;
use App\Model\Employee;

use Carbon\Carbon;

class LeaveController extends Controller
{
    public function index()
    {
        $filter = \DataFilter::source(Leave::with('leave_type','leave_application'));

        $filter->add('start_day','Start Day','date');
        $filter->add('end_day','Last Day','date');
        $filter->add('leave_type','Leave Type','select')//->option(['' => 'Select Leave Type'])
        ->options(LeaveType::lists('name','id')->all());
        $filter->add('employee','Employee Id','select')->options(['' => 'Select Employee'])
            ->options(Employee::lists('employee_id','id')->all());

        $filter->submit('search');
        $filter->reset('reset');
        $filter->build();

        $grid = \DataGrid::source($filter);

        $grid->add('id','S_No',true)->cell(function($value,$row){

            $pageNumber =( \Input::get('page') ?  \Input::get('page') : 1 );

            static $serialstart = 0;
            ++$serialstart;
            return ($pageNumber - 1) * intval(config('hrm.alternative_pagination')) + $serialstart;
        });

        $grid->add('employee','Employee_ID',true)->cell(function($value,$row){
            return Employee::where('id',$row->employee_id)->first()->employee_id;
        });

        $grid->add('start_day','Start_Day',true);
        $grid->add('end_day','Last_Day',true);
        $grid->add('duration','Duration',true)->cell(function($value,$row){
            /*$start = \DateTime::createFromFormat('Y-m-d',$row->start_day);
            $end = \DateTime::createFromFormat('Y-m-d',$row->end_day);

            return date_diff($start,$end)->format('%a');*/

            $start = Carbon::createFromFormat('d/m/Y',$row->start_day);
            $end = Carbon::createFromFormat('d/m/Y',$row->end_day);

            return $start->diffInDays();

        });
        $grid->add('leave_type','Leave Type',true)->cell(function($value,$row){
            return LeaveType::where('id',$row->leave_type_id)->first()->name;
        });
        //$grid->add('reasons','Reasons',true);

        //$grid->link('leave_application/edit','New Leave','TR',['class' => 'btn btn-success']);
        $grid->edit('leave_leave/edit','Action','show');

        $grid->build();

        return view('leave.leave.index',compact('filter','grid'));
    }

    public function edit()
    {

    }
}
