@extends('layouts.master')

@section('title','EmployeeTypes')
@section('sidebar')

    @include('layouts.sidebar',['active' =>'employee.type','parent_menu'=>'employee'])

@endsection

@section('content')
    <!-- Info boxes -->

    <div class="box box-primary">

        <h3 class="box-title padding-left">Employee Types </h3>

        <div class="box-body">
            @include('layouts.system_message')
            {!! $filter !!}
            {!! $grid !!}
        </div>


        <div class="box-footer clearfix">

        </div>
    </div>




@endsection
