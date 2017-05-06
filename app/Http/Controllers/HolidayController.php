<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Model\Holiday;
use App\Model\HolidayType;
class HolidayController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $filter = \DataFilter::source(Holiday::with('holiday_type'));

        $filter->add('name','Name','text');
        $filter->add('start','First Date','date');
        $filter->add('end','Last Date','date');
        $filter->add('type','Type','select')
            ->options(['' => 'Select Type'])
            ->options(HolidayType::lists('name','id')->all());

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

        $grid->add('name','Name',true);
        $grid->add('start','Start Date',true);
        $grid->add('end','Last Date',true);
        $grid->add('type','Type',true);
        $grid->add('duration','Duration',true)->cell(function($value,$row){
            $start = \DateTime::createFromFormat('Y-m-d',$row->start);
            $end = \DateTime::createFromFormat('Y-m-d',$row->end);
            return date_diff($start,$end)->format('%a');
        });

        $grid->edit('/holiday/edit','Action','show|modify|delete');
        $grid->link('/holiday/edit','New Holiday','TR',['class' => 'btn btn-success']);

        $grid->paginate(config('hrm.alternative_pagination'));

        return view('leave.holiday.index',compact('filter','grid'));
    }

    public function edit()
    {
        $edit = \DataEdit::source(new Holiday());

        $edit->add('name','Name<span class="text-danger">*</span>','text')->rule('required');
        $edit->add('start','Start Day<span class="text-danger">*</span>','date')->rule('required');
        $edit->add('end','End Day<span class="text-danger">*</span>','date')->rule('required|after:start');
        $edit->add('type','Type<span class="text-danger">*</span>','select')
        ->options(['' => 'Select'])
            ->options(HolidayType::lists('name','id')->all())->rule('required');

        $edit->link('holiday','Holidays','TR',['class' => 'btn btn-primary'])->back();

        $edit->build();

        return $edit->view('leave.holiday.edit',compact('edit'));
    }
}
