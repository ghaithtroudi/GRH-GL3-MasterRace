<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Model\LeaveType;
use Illuminate\Http\Request;

class LeaveTypeController extends Controller
{
    public function index()
    {
        

        $grid = \DataGrid::source('leave_types');

        $grid->add('id','S_No', true)->cell(function($value, $row){
            $pageNumber =( \Input::get('page') ?  \Input::get('page') : 1 );

            static $serialstart = 0;
            ++$serialstart;
            return ($pageNumber - 1) * intval(config('hrm.alternative_pagination')) + $serialstart;


        });
        $grid->add('name','Leave Type',true); 
       
        
        $grid->edit('leavetype/edit', 'Edit','modify');
        $grid->link('leavetype/edit',"New Leave Type", "TR",['class' =>'btn btn-success']);
        $grid->orderBy('name','ASC');
        
        $grid->paginate(10);


        return  view('leave.type.index', compact('grid'));
    }

    public function edit()
    {
        
        $edit = \DataEdit::source(new LeaveType());
        $edit->link("leavetype","Leave Type", "TR",['class' =>'btn btn-primary'])->back();
        
        $edit->add('name','Leave Type Name <span class="text-danger">*</span>', 'text')->rule('required');
        
        $edit->build();

        return $edit->view('leave.type.edit', compact('edit')); 
    }
}
