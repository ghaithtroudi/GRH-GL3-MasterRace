<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Model\Branch;
use App\Model\Department;
use App\Model\Designation;
use App\Model\Employee;
use App\Model\Employee_Designation;
use App\Model\Grade;
use App\Model\Line;
use App\Model\Section;
use Illuminate\Http\Request;

class EmployeeController extends Controller
{
    protected static $img_dir = 'uploads/images/employees/';

    public function index()
    {
    	// return Employee::with('line.section.department.branch','designations')->get();
        
        $filter = \DataFilter::source(Employee::with('line','section','department','branch','designations'));
        
        $filter->add('employee_id','Employee ID','text');
        $filter->add('branch','Branch', 'select')->options([''=>'Select Branch'])->options(Branch::lists("name", "id")->all())
                    // ->scope(function($query){
                    //     if (!empty(\Input::get('line_section_department_branch'))) {
                    //         $branches = Branch::where(['id'=>\Input::get('line_section_department_branch')])->with('departments.sections.lines')->get();
                    //         $lines = [];
                    //         foreach ($branches as $branch) {
                    //         	foreach ($branch->departments as $department) {
                    //         		foreach ($department->sections as $section) {
                    //         			$lines = array_merge($lines, array_pluck($section->lines->toArray(), 'id'));
                    //         		}
                    //         	}
                    //         }
                    //         return $query->whereIn('line_id',$lines);
                    //     } else {
                    //        return $query; 
                    //     }

                    // })
                    ->attributes(['data-target'=>'department','data-source'=>url('/department/json'), 'onchange'=>"populateSelect(this)"]);
        
        $filter->add('department','Department','select')

            ->options([''=>"Select Department"])
            ->options(Department::where('branch_id', \Input::get('branch'))->lists("name", "id"))
            // ->scope(function($query){
            //     if (!empty(\Input::get('department')) && trim(\Input::get('department')) !="--Select--") {

            //     	$lines = [];

            //         $departments = Department::where(['id'=>\Input::get('line_section_department')])->with('sections.lines')->get();
            //         	foreach ($departments as $department) {
            //         		foreach ($department->sections as $section) {
            //         			$lines = array_merge($lines, array_pluck($section->lines->toArray(), 'id'));
            //         		}
            //         	}
            //     	return $query->whereIn('line_id',$lines);

            //     }else{
            //         return $query;
            //     }
            // })
            ->attributes(['data-target'=>'section','data-source'=>url('/section/json'), 'onchange'=>"populateSelect(this)"]);
       
        $filter->add('section','Section','select')

            ->options([''=>"Select Section"])
            ->options(Section::where('department_id', \Input::get('department'))->lists("name", "id"))
            // ->scope(function($query){
            //     if (!empty(\Input::get('line_section')) && trim(\Input::get('line_section')) !="--Select--") {

            //     	$lines= [];

            //         $sections = Section::where(['id'=>\Input::get('line_section')])->with('lines')->get();
                   
            // 		foreach ($sections as $section) {
            // 			$lines = array_merge($lines, array_pluck($section->lines->toArray(), 'id'));
            // 		}
            		
            //         return $query->whereIn('line_id',$lines);

            //     }else{
            //         return $query;
            //     }
            // })
            ->attributes(['data-target'=>'line','data-source'=>url('/line/json'), 'onchange'=>"setDesignationWhilePopulatingSelect(this)"]); //populateSelect(this)
        
        	$filter->add('line','Line','select')

            ->options([''=>"Select Line"])
            ->options(Line::where('section_id', \Input::get('line_section'))->lists("name", "id"))
            ->scope(function($query){
                if (!empty(\Input::get('line')) && trim(\Input::get('line')) != "--Select--") {
            		
                    return $query->where('line_id',\Input::get('line'));

                }else{
                    return $query;
                }
        });


        //$filter->add('designations.name','Designations','tags');

       $filter->add('designations','Designation','select')
            ->options(['' => "Select Designation"])
            ->options(Designation::where('section_id',\Input::get('section'))->lists('name','id'))
        ->scope(function($query,$value){
            if(!empty($value) && trim($value != "--Select--")){
                    $grades = Grade::where('designation_id',$value)->get();

                    return $query->whereIn('grade_id',$grades->pluck('id'));

                }
                else{
                    return $query;
                }
        });

        $filter->submit('search');
        $filter->reset('reset');
        $filter->build();

        //Grid View

        $grid = \DataGrid::source($filter);

        $grid->add('id','#')->cell(function($value, $row){
            $pageNumber = (\Input::get('page')) ? \Input::get('page') : 1;

            static $serialStart = 0;
            ++$serialStart; 
            return ($pageNumber-1)*config('hrm.pagination_per_page', 15) + $serialStart;


        });
        
        $grid->add('employee_id','Employee ID',true);
        $grid->add('image','Image')->cell(function($value,$row){
        	if(preg_match('/^http/', $value)){
                return '<img alt="employee Photo" class="attachment-img img-responsive" style="width:120px; height:90px" src="'.url("uploads/images/employees/dummyPortrait.png").'">' ;
            }else {
                return '<img alt="employee Photo" class="attachment-img img-responsive" style="width:120px; height:90px" src="'.url("uploads/images/employees").'/'.$value.'">' ;
            }
        });
        $grid->add('name','Employee Name',true); 
        $grid->add('{{  implode(", ", $designations->lists("name")->all()) }}','Designation',true);
       
        $grid->add('{{ $branch->name }}','Branch','branch_id');
        $grid->add('{{ $department->name }}','Department','department_id');
        $grid->add('{{ $section->name }}','Section','section_id');
        $grid->add('{{ @$line->name }}','Line','line_id');
        $grid->add('gender','Gender',true)->cell(function($value,$row){
        	return ($value==1)?'Male':'Female';
        });
        $grid->add('status','Status',true)->cell(function($value,$row){
        	return employeeStatus($value);
        });
        $grid->edit('/employee/edit', 'Edit','modify');
        $grid->link('/employee/edit',"New Employee", "TR",['class' =>'btn btn-success']);
        $grid->orderBy('id','ASC');
        
        $grid->paginate(config('hrm.pagination_per_page', 15));


        return  view('employee.index', compact('grid','filter'));
    }


    public function edit()
    {
    	$edit = \DataEdit::source(new Employee());
    	$edit->add('branch_id','Branch <span class="text-danger">*</span>','select')
    		 ->options([''=>'Select Branch'])
    		 ->options(Branch::lists("name", "id")->all())
    		 ->attributes(['data-target'=>'department_id','data-source'=>url('/department/json'), 'onchange'=>"populateSelect(this)"]);
        
        $edit->add('department_id','Department <span class="text-danger">*</span>','select')
			 ->options([''=>"Select Department"])
             ->options(Department::lists("name", "id")->all())
			 ->attributes(['data-target'=>'section_id','data-source'=>url('/section/json'), 'onchange'=>"populateSelect(this)"]);

	    $edit->add('section_id','Section <span class="text-danger">*</span>','select')
			 ->options([''=>"Select Section"])
             ->options(Section::lists("name", "id")->all())
			 ->attributes(['data-target'=>'line_id','data-source'=>url('/line/json'), 'onchange'=>"populateSelect(this);setDesignation(this)"]);

		$edit->add('line_id','Line <span class="text-danger">*</span>','select')
			 ->options([''=>"Select Line"])
             ->options(Line::lists("name", "id")->all());

        $edit->link("employee","Employee", "TR",['class' =>'btn btn-primary'])->back();

        $edit->add('employee_id','Employee ID <span class="text-danger">*</span>', 'text')->rule('required');
        $edit->add('name','Full Name <span class="text-danger">*</span>', 'text')->rule('required');
        $edit->add('designations','Designations','select')
             ->options([''=>'Select Designations'])
             ->options(Designation::lists('name','id')->all())
             ->attributes(['data-target'=>'grade_id','data-source'=>url('/grade/json'), 'onchange'=>"populateSelect(this)"]);

        $edit->add('grade_id','Grade','select')
             ->options([''=>'Select Grade'])
             ->options(Grade::lists('name','id')->all());

        $edit->add('gender','Gender <span class="text-danger">*</span>','select')->options(['1'=>'Male','2'=>'Female'])->rule('required');
        $edit->add('dob','Date Of Birth <span class="text-danger">*</span>','date')->format('d/m/Y', 'en')->rule('required');
        $edit->add('father_name','Father\'s Name <span class="text-danger">*</span>','text')->rule('required');
        $edit->add('present_address','Present Adress <span class="text-danger">*</span>','textarea')->attributes(['rows'=>3])->rule('required');
        $edit->add('permanent_address','Permanent Adress <span class="text-danger">*</span>','textarea')->attributes(['rows'=>3])->rule('required');
        $edit->add('primary_phone','Primary Phone <span class="text-danger">*</span>','text')->rule('required');
        $edit->add('secondary_phone','Secondary Phone','text');
        $edit->add('national_id','National ID','text');
        $edit->add('passport','Passport','text');
        $edit->add('birth_certificate','Birth Certificate','text');
        $edit->add('joining_date','Joining Date <span class="text-danger">*</span>','date')->format('d/m/Y', 'en')->rule('required');
        $edit->add('status','Status <span class="text-danger">*</span>','select')->options(['1'=>'Active','2'=>'New','3'=>'Resigned'])->rule('required');

        $edit->add('type','Type <span class="text-danger">*</span>','select')->options(['1'=>'Worker','2'=>'Staff'])->rule('required');

        $edit->add('image','Photo', 'image')->move(public_path('/uploads/images/employees'))
            ->image(function($image) {
            $employee = Employee::orderBy('id','desc')->first();
            $last_id = $employee->id + 1;

            $image->resize(120, 90);
            $image->save(public_path('/uploads/images/employees/'.$last_id.'.'.$image->extension));
        });

        $edit->build();

        return $edit->view('employee.edit', compact('edit')); 
    }

    public function editExtended(Request $request)
    {
        $this->validate($request,[
            'employee_id' => 'required|filled',
            'name' => 'required|filled',
            'dob' => 'required|filled|date_format:"d/m/Y"',
            'joining_date' => 'required|filled|date_format:"d/m/Y"',
            'present_address' => 'required|filled',
            'permanent_address' => 'required|filled',
            'primary_phone' => 'required|filled|numeric',
            'secondary_phone' => 'numeric',
        ]);

        $referer = $request->headers->get('referer');
        $ref_array = explode('=',$referer);
        $id = $ref_array[count($ref_array)-1];

        if( !is_numeric($id))
        {
            $this->saveEmployee($request->all());
        }

        else
        {
            $this->updateEmployee($request->all(),$id);
        }

        return back()->withErrors($this);
    }

    public function saveEmployee($fields)
    {
        $image = null;
        $designation_id = null;

        unset($fields['_token']);
        unset($fields['save']);

        if( array_key_exists('designations',$fields) )
        {
            $designation_id = $fields['designations'];
            unset($fields['designations']);
        }

        if( array_key_exists('image',$fields) )
        {
            $image = $fields['image'];
            unset($fields['image']);
        }

        $date = \DateTime::createFromFormat('d/m/Y',$fields['joining_date']);
        $date = $date->format('Y-m-d');

        $fields['joining_date'] = $date;

        $date = \DateTime::createFromFormat('d/m/Y',$fields['dob']);
        $date = $date->format('Y-m-d');

        $fields['dob'] = $date;

        $employee = new Employee($fields);
        $employee_designation = new Employee_Designation();

        if( $image != null )
        {
            $finfo = finfo_open(FILEINFO_MIME_TYPE);
            $mime = finfo_file($finfo,$image);

            if( str_contains($mime,'image') )
            {
                $base_path = config('img_dir');

                $extension = explode('/',$mime)[1];

                $last_id = Employee::orderBy('id','desc')->first()->id + 1;

                $new_path = $base_path.$last_id.'.'.$extension;

                move_uploaded_file(realpath($image),$new_path);

                $employee->image = $last_id.'.'.$extension;
            }
        }

        $employee->save();

        if( $designation_id != null )
        {
            $employee_designation->employee_id = $employee->id;
            $employee_designation->designation_id = $designation_id;
            $employee_designation->status = true;
            $employee_designation->save();
        }
    }

    public function updateEmployee($fields,$id)
    {
        $employee = Employee::find($id);
        $image = null;

        unset($fields['_token']);
        unset($fields['save']);

        if( array_key_exists('designations',$fields) )
        {
            $designation_id = $fields['designations'];
            unset($fields['designations']);
        }

        if ( array_key_exists('image_remove',$fields) )
        {
            unset($fields['image_remove']);
            $file = config('hrm.img_dir').$employee->image;
            unlink($file);
            $employee->image = '';
        }

        if( array_key_exists('image',$fields) )
        {
            $image = $fields['image'];
            unset($fields['image']);
        }

        $employee_designation = new Employee_Designation();

        if( $image != null )
        {
            $finfo = finfo_open(FILEINFO_MIME_TYPE);
            $mime = finfo_file($finfo,$image);

            if( str_contains($mime,'image') )
            {
                $base_path = config('hrm.img_dir');

                $extension = explode('/',$mime)[1];;

                $new_path = $base_path.$id.'.'.$extension;

                move_uploaded_file(realpath($image),$new_path);

                $fields['image'] = $id.'.'.$extension;
            }
        }

        $employee->update($fields);
    }
}
