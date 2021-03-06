<?php

namespace App\Http\Controllers\Reports;

use App\Model\SalaryRegister;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Input;


class SalaryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $filter = \DataFilter::source(SalaryRegister::with('employee'));

        $filter->add('employee.employee_id','Employee','tags');
        $filter->add('month','Month','select')->options([''=>'Select Month'])
            ->options(months());
        $filter->add('year','Year','date')->format('Y');

        $filter->submit('search');
        $filter->reset('reset');
        $filter->build();


        $salaries = SalaryRegister::where(function($query){
                    if(!empty(Input::get('month')))
                    {
                        return $query->where('month',Input::get('month'));
                    }else{
                        return $query;
                    }
                })->where(function($query){
                    if(!empty(Input::get('year')))
                    {
                        return $query->where('year',Input::get('year'));
                    }else{
                        return $query;
                    }
                })->where(function($query){
                    if(!empty(Input::get('employee_employee_id')))
                    {
                        return $query->where('employee_id',Input::get('employee_employee_id'));
                    }else{
                        return $query;
                    }
                })
                ->with('employee.designations','employee.grade','salaryStructure')
                ->paginate(config('hrm.report_row_per_page'));

        
        //return $salaries;


        return view('report.salary.index',compact('filter','salaries'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function download()
    {
        $salaries = SalaryRegister::where(function($query){
            if(!empty(Input::get('month')))
            {
                return $query->where('month',Input::get('month'));
            }else{
                return $query;
            }
        })->where(function($query){
            if(!empty(Input::get('year')))
            {
                return $query->where('year',Input::get('year'));
            }else{
                return $query;
            }
        })->where(function($query){
            if(!empty(Input::get('employee_employee_id')))
            {
                return $query->where('employee_id',Input::get('employee_employee_id'));
            }else{
                return $query;
            }
        })
            ->with('employee.designations','employee.grade','salaryStructure')
            ->get();

//        $pdf = \PDF::loadView('report.salary.pdf', compact('filter','salaries'));
//        return $pdf->download('salaryRegister.pdf');

        \Excel::create('Salary_'.date('d-m-Y'), function($excel) use($salaries) {
            $excel->setTitle('Our new awesome title');
            $excel->sheet('New sheet', function($sheet) use($salaries) {

                $sheet->loadView('report.salary.pdf')->with('salaries',$salaries);

            })->download('xlsx');;

        });

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

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
    public function edit($id)
    {
        //
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
}
