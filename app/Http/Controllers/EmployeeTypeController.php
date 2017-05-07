<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Model\EmployeeType;

class EmployeeTypeController extends Controller
{
    public function index()
    {
        $filter = \DataFilter::source(EmployeeType::with('employees'));

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

        $grid->edit('/employee_type/edit','Action','modify|delete');
        $grid->link('/employee_type/edit','New Employee Type','TR',['class' => 'btn btn-primary']);

        $grid->paginate(config('hrm.pagination_alternative'));

        $grid->build();

        return view('employee.type.index',compact('filter','grid'));
    }

    public function edit()
    {
        $edit = \DataEdit::source(new EmployeeType());

        $edit->add('name','Name<span class="text-danger">*</span>','text')->rule('required|unique:employee_types,name');

        $edit->link('/employee_type','Employee Types','TR',['class' => 'btn btn-primary']);

        return $edit->view('employee.type.edit',compact('edit'));
    }

}
