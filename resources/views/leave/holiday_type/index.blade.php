@extends('layouts.master')

@section('title','HolidayTypes')
@section('sidebar')

    @include('layouts.sidebar',['active' =>'holiday_type','parent_menu'=>'leave'])

@endsection

@section('content')
    <!-- Info boxes -->

    <div class="box box-primary">

        <h3 class="box-title padding-left">Holiday Types </h3>

        <div class="box-body">
            @include('layouts.system_message')
            {!! $filter !!}
            {!! $grid !!}
        </div>


        <div class="box-footer clearfix">

        </div>
    </div>




@endsection
