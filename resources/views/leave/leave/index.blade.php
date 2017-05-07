@extends('layouts.master')

@section('title','Leaves')
@section('sidebar')

    @include('layouts.sidebar',['active' =>'leave_leave','parent_menu'=>'leave'])

@endsection

@section('content')
    <!-- Info boxes -->

    <div class="box box-primary">

        <h3 class="box-title padding-left">Leaves</h3>

        <div class="box-body">
            @include('layouts.system_message')
            {!! $filter !!}
            {!! $grid !!}
        </div>


        <div class="box-footer clearfix">

        </div>
    </div>




@endsection
