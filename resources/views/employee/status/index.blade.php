@extends('layouts.master')

@section('title','EmployeeStatuses')
@section('sidebar')

    @include('layouts.sidebar',['active' =>'employee.status','parent_menu'=>'employee'])

@endsection

@section('content')
    <!-- Info boxes -->

    <div class="box box-primary">

        <h3 class="box-title padding-left">Employee Statuses </h3>

        <div class="box-body">
            @include('layouts.system_message')
            {!! $filter !!}
            {!! $grid !!}
        </div>


        <div class="box-footer clearfix">

        </div>
    </div>




@endsection
