@extends('layouts.master')

@section('title','Salary Structure')
@section('sidebar')

@include('layouts.sidebar',['active' =>'structure','parent_menu'=>'salary'])

@endsection

@section('content')
        <!-- Info boxes -->

<div class="box box-primary">

    <h3 class="box-title padding-left">Salary Structures </h3>

    <div class="box-body">

        <div class="col-md-12">

            <div class="col-sm-8">

                {!! $edit->message !!}
                {!! $edit->header !!}


                <div class="form-group">

                    <div class="col-sm-offset-2 col-sm-12">
                        {!! $edit->render('employee.employee_id') !!}
                    </div>
                </div>
                <div class="form-group">

                    <div class="col-sm-offset-2 col-sm-12">
                        {!! $edit->render('basic') !!}
                    </div>
                </div>
                <div class="form-group">

                    <div class="col-sm-offset-2 col-sm-12">
                        {!! $edit->render('house_rent') !!}
                    </div>
                </div>
                <div class="form-group">

                    <div class="col-sm-offset-2 col-sm-12">
                        {!! $edit->render('m_a') !!}
                    </div>
                </div>
                <div class="form-group">

                    <div class="col-sm-offset-2 col-sm-12">
                        {!! $edit->render('t_a') !!}
                    </div>
                </div>
                <div class="form-group">

                    <div class="col-sm-offset-2 col-sm-12">
                        {!! $edit->render('f_a') !!}
                    </div>
                </div>
                <div class="form-group">

                    <div class="col-sm-offset-2 col-sm-12">
                        {!! $edit->render('ot_rate') !!}
                    </div>
                </div>
                <div class="form-group">

                    <div class="col-sm-offset-2 col-sm-12">
                        {!! $edit->render('gross') !!}
                    </div>
                </div>
                <div class="form-group">

                    <div class="col-sm-offset-2 col-sm-12">
                        {!! $edit->render('type') !!}
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-9">
                        {!! $edit->footer !!}
                    </div>
                </div>
            </div>
        </div>
        <div class="box-footer clearfix">
        </div>
    </div>
</div>
@endsection
@section('script')
    <script>
        jQuery(document).ready(function($) {
            $("#f_a").blur(function(){
                var basic = Number($("#basic").val());
                var house_rent = Number($("#house_rent").val());
                var m_a = Number($("#m_a").val());
                var t_a = Number($("#t_a").val());
                var f_a = Number($("#f_a").val());

                var subtotal = basic+house_rent+m_a+t_a+f_a;

                $("#gross").val(subtotal);

            }); 
        });
    </script>
@endsection
