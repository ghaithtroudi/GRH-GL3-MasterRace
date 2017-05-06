@extends('layouts.master')

@section('title','Branch')
@section('sidebar')

    @include('layouts.sidebar',['active' =>'branch','parent_menu'=>'settings'])

@endsection

@section('content')
    <!-- Info boxes -->

    <div class="box box-primary">

        <h3 class="box-title padding-left">Holiday</h3>

        <div class="box-body">

            <div class="col-md-12">

                <div class="col-sm-8">

                    {!! $edit->message !!}
                    {!! $edit->header !!}

                    <div class="form-group">

                        <div class="col-sm-offset-2 col-sm-12">
                            {!! $edit->render('name') !!}
                            <!-- $edit->model -->
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-sm-offset-2 col-sm-12">
                            {!! $edit->render('type') !!}
                        </div>
                    </div>
                    <div class="form-group">

                        <div class=" col-sm-offset-2 col-sm-12">
                            {!! $edit->render('start') !!}
                        </div>
                    </div>

                    <div class="form-group">

                        <div class=" col-sm-offset-2 col-sm-12">
                            {!! $edit->render('end') !!}
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