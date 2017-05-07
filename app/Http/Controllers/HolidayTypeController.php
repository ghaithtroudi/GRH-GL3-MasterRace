<?php

namespace App\Http\Controllers;

use App\Model\HolidayType;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class HolidayTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $filter = \DataFilter::source(HolidayType::with('holidays'));

        $filter->add('name','Name','text');

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

        $grid->edit('/holiday_type/edit','Action','modify|delete');
        $grid->link('/holiday_type/edit','New Holiday Type','TR',['class' => 'btn btn-primary']);

        $grid->paginate(config('hrm.alternative_pagination'));

        $grid->build();

        return view('leave.holiday_type.index',compact('filter','grid'));
    }

    public function edit()
    {
        $edit = \DataEdit::source(new HolidayType());

        $edit->add('name','Name<span class="text-danger">*</span>','text')->rule('required|unique:holiday_types,name');

        $edit->link('/holiday_type','Holiday Types','TR',['class' => 'btn btn-primary']);

        $edit->build();

        return $edit->view('leave.holiday_type.edit',compact('edit'));
    }
}
