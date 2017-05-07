@extends('layouts.master')

@section('title','EmployeeStatus')
@section('sidebar')

    @include('layouts.sidebar',['active' =>'employee.status','parent_menu'=>'employee'])

@endsection

@section('content')
    <!-- Info boxes -->

    <div class="box box-primary">

        <h3 class="box-title padding-left">Employee Statuses </h3>

        <div class="box-body">

            <div class="col-md-12">

                <div class="col-sm-8">

                    {!! $edit->message !!}
                    {!! $edit->header !!}

                    <div class="form-group">

                        <div class="col-sm-offset-2 col-sm-12">
                            {!! $edit->render('name') !!}
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
