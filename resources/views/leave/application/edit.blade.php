@extends('layouts.master')

@section('title','LeaveApplication')
@section('sidebar')

    @include('layouts.sidebar',['active' =>'leave_application','parent_menu'=>'leave'])

@endsection

@section('content')
    <!-- Info boxes -->

    <div class="box box-primary">

        <h3 class="box-title padding-left">Leave Application</h3>

        <div class="box-body">

            <div class="col-md-12">

                <div class="col-sm-8">

                    {!! $edit->message !!}
                    {!! $edit->header !!}

                    <div class="form-group">

                        <div class="col-sm-offset-2 col-sm-12">
                        {!! $edit->render('employee_id') !!}
                        <!-- $edit->model -->
                        </div>
                    </div>

                    <div class="form-group">

                        <div class="col-sm-offset-2 col-sm-12">
                        {!! $edit->render('start_day') !!}
                        <!-- $edit->model -->
                        </div>
                    </div>

                    <div class="form-group">

                        <div class="col-sm-offset-2 col-sm-12">
                        {!! $edit->render('end_day') !!}
                        <!-- $edit->model -->
                        </div>
                    </div>

                    <div class="form-group">

                        <div class="col-sm-offset-2 col-sm-12">
                        {!! $edit->render('leave_type') !!}
                        <!-- $edit->model -->
                        </div>
                    </div>

                    <div class="form-group">

                        <div class="col-sm-offset-2 col-sm-12">
                        {!! $edit->render('reasons') !!}
                        <!-- $edit->model -->
                        </div>
                    </div>

                    <div class="form-group">

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

@section ('scripts')
            <script type="text/javascript" src={{'/public/assets/js/plus/restrict_modify.js'}}></script>
@endsection