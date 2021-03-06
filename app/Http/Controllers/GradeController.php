<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Grade;
use App\Model\Branch;
use App\Model\Department;
use App\Model\Designation;
use App\Model\Section;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class GradeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        //$grid = \DataGrid::source(Grade::with('designation'));

        $filter = \DataFilter::source(grade::with('designation','department','branch','section'));

        $filter->add('branch.name','Branch', 'select')->options([''=>'Select Branch'])->options(Branch::lists("name", "id")->all())
                    ->scope(function($query){
                        if (!empty(\Input::get('branch_name'))) {
                            $branch = Branch::where(['id'=>\Input::get('branch_name')])->with('departments')->get();
                            $departments = array_pluck($branch[0]->departments->toArray(), 'id');
                            return $query->whereIn('department_id',$departments);
                        } else {
                           return $query; 
                        }
                        

                    })
                    ->attributes(['data-target'=>'department_name','data-source'=>url('/department/json'), 'onchange'=>"populateSelect(this)"]);
        
        $filter->add('department.name','Department','select')
            ->options([''=>"--Select--"])
            ->options(Department::where('branch_id', \Input::get('department_name'))->lists("name", "id"))
            ->scope(function($query){
                if (!empty(\Input::get('department_name')) && trim(\Input::get('department_name')) !="--Select--") {

                   return $query->where('department_id',\Input::get('department_name'));

                }else{
                    return $query;
                }
            })
            ->attributes(['data-target'=>'section_name','data-source'=>url('/section/json'), 'onchange'=>"populateSelect(this)"]);
        
        
        $filter->add('section.name','Section','select')

            ->options([''=>"Select Section"])
            ->options(Section::where('department_id', \Input::get('department'))->lists("name", "id"))
            ->scope(function($query){
                if (!empty(\Input::get('section_name')) && trim(\Input::get('section_name')) !="--Select--") {

                   return $query->where('section_id',\Input::get('section_name'));

                }else{
                    return $query;
                }
            })
            ->attributes(['data-target'=>'designation_name','data-source'=>url('/designation/json'), 'onchange'=>"populateSelect(this)"]);

        $filter->add('designation.name','Designation','select')
            ->options([''=>"Select Designation"])
            ->options(Designation::where('section_id', \Input::get('section'))->lists("name", "id"));

        $filter->submit('search');
        $filter->reset('reset');
        $filter->build();

        $grid = \DataGrid::source($filter);


        $grid->add('id','S_No', true)->cell(function($value, $row){
            $pageNumber = (\Input::get('page')) ? \Input::get('page') : 1;

            static $serialStart =0;
            ++$serialStart; 
            return ($pageNumber-1)*10 +$serialStart;

        });


        $grid->add('id','S_No', true)->cell(function($value, $row){
            $pageNumber = (\Input::get('page')) ? \Input::get('page') : 1;

            static $serialStart =0;
            ++$serialStart; 
            return ($pageNumber-1)*10 +$serialStart;

        });

        $grid->add('{{ $branch->name }}','Branch','branch_id');
        $grid->add('{{ $department->name }}','Department','department_id');
        $grid->add('{{ @$section->name }}','Section Name','section_id');
        $grid->add('{{ $designation->name }}','Designation','designation_id');
        $grid->add('name','Grade Name',true); 
        $grid->edit('grade/edit', 'Edit','show|modify|delete');
        $grid->link('grade/edit',"New Grade", "TR",['class' =>'btn btn-success']);
        $grid->orderBy('name','ASC');
        
        $grid->paginate(10);


        return  view('grade.index', compact('grid','filter'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit()
    {
        $edit = \DataEdit::source(new Grade());
        $edit->link("grade","grade", "TR",['class' =>'btn btn-primary'])->back();

        $edit->add('branch_id','Branch <span class="text-danger">*</span>','select')
             ->options([''=>'Select Branch'])
             ->options(Branch::lists("name", "id")->all())
             ->attributes(['data-target'=>'department_id','data-source'=>url('/department/json'), 'onchange'=>"populateSelect(this)"]);
        
        $edit->add('department_id','Department <span class="text-danger">*</span>','select')
             ->options([''=>"Select Department"])
             ->options(Department::lists('name','id')->all())
             ->attributes(['data-target'=>'section_id','data-source'=>url('/section/json'), 'onchange'=>"populateSelect(this)"]);

        $edit->add('section_id','Section <span class="text-danger">*</span>','select')
             ->options([''=>"Select Section"])
             ->options(Department::lists('name','id')->all())
             ->attributes(['data-target'=>'designation_id','data-source'=>url('/designation/json'), 'onchange'=>"populateSelect(this)"]);

        $edit->add('designation_id','Designation <span class="text-danger">*</span>','select')
             ->options([''=>"Select Designation"])
             ->options(Designation::lists('name','id')->all());
        $edit->add('name','Grade <span class="text-danger">*</span>', 'text')->rule('required');
        $edit->build();
        return $edit->view('grade.edit', compact('edit')); 
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function getLists($designation_id)
    {
        return Grade::where('designation_id',$designation_id)->get();
    }
}
