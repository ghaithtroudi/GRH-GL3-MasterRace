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
        $filter = \DataFilter::source(Holiday::with('holiday_types'));

        $filter->add('name','Name','text');
        $filter->add('start','First Date','date');
        $filter->add('end','Last Date','date');
        $filter->add('duration','Duration','text');
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
        $grid->add('start','First Date',true);
        $grid->add('end','Second Date',true);
        $grid->add('type','Type');
        $grid->add('duration','Duration',true);

        $grid->edit('/holiday/edit','Action','modify|delete');
        $grid->link('/holiday/create','New Holiday','TR',['class' => 'btn btn-success']);

        $grid->paginate(config('hrm.alternative_pagination'));

        return view('leave.holiday.index',compact('filter','grid'));
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
