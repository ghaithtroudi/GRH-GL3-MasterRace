<?php

namespace App\Http\Controllers;

use App\Model\LeaveApplication;
use App\Model\LeaveType;
use App\Model\Employee;
use App\Model\Leave;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use function Stringy\create;

class LeaveApplicationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $filter = \DataFilter::source(LeaveApplication::with('leave_type'));

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

        $grid->add('do','Do',true)->cell(function($value,$row){
            return setTheDoColumn($row);
        });

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
            $start = \DateTime::createFromFormat('Y-m-d',$row->start_day);
            $end = \DateTime::createFromFormat('Y-m-d',$row->end_day);

            return date_diff($start,$end)->format('%a');
        });
        $grid->add('leave_type','Leave Type',true)->cell(function($value,$row){
            return LeaveType::where('id',$row->leave_type_id)->first()->name;
        });
        //$grid->add('reasons','Reasons',true);

        $grid->link('leave_application/edit','New Leave Application','TR',['class' => 'btn btn-success']);
        $grid->edit('leave_application/edit','Action','show');

        $grid->add('state','State',true)->cell(function($value,$row){
            return setTheStateColumn($row->state);
        });

        $grid->build();

        return view('leave.application.index',compact('filter','grid'));
    }

    public function edit()
    {
        $edit = \DataEdit::source(new LeaveApplication());

        $edit->add('employee_id','Employee ID<span class="text-danger">*</span>','select')->options(['' => 'Select Employee'])
            ->options(Employee::lists('employee_id','id')->all())
            ->rule('required');

        $edit->add('start_day','Start Day<span class="text-danger">*</span>','date')
            ->rule('required');

        $edit->add('end_day','End Day<span class="text-danger">*</span>','date')
            ->rule('required|after:start_day');

        $edit->add('leave_type','Type<span class="text-danger">*</span>','select')->options(['' => 'Select Type'])
            ->options(LeaveType::lists('name','id')->all())
            ->rule('required');

        $edit->add('reasons','Reasons<span class="text-danger">*</span>','textarea')->rule('required');

        $edit->link('/leave_application','Leave Applications','TR',['class' => 'btn btn-primary']);

        $edit->build();

        return view('leave.application.edit',compact('edit'));
    }

    public function deal()
    {
        $yes = \Input::get('yes');
        $id = \Input::get('app');

        $application = LeaveApplication::where('id',$id)->first();

        $today = \DateTime::createFromFormat('Y-m-d',date('Y-m-d'));
        $start_day = \DateTime::createFromFormat('Y-m-d',$application->start_day);

        if( intval(date_diff($start_day,$today)->format('%R%a').contains('-')) > 0 )
        {
            $application->state = 4;
        }

        else
        {
            if ( !$yes )
            {
                $application->state = 3;
            }
            else
            {
                $application->state = 2;
                $fields = $application->toArray();

                unset($fields['state']);
                unset($fields['id']);
                unset($fields['reasons']);

                $leave = new Leave($fields);
                $leave->remark = $application->reasons;
                $leave->leave_app_id  = $application->id;
                $leave->save();
            }
        }

        $application->update();
        return back();
    }
}
