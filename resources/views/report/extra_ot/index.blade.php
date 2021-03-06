@extends('layouts.master')

@section('title','Salary Structure')
@section('sidebar')

@include('layouts.sidebar',['active' =>'extra_ot','parent_menu'=>'reports'])

@endsection

@section('content')
        <!-- Info boxes -->

<div class="box box-primary">

    <h3 class="box-title padding-left">Salary Register Report</h3>

    <div class="box-body table-responsive no-padding">

        {!! $filter !!}
        <button id="report_download_btn" class="btn btn-primary pull-right" data-link="/report/extra-ot/download">Download Report</button>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Card No</th>
                <th >Degination</th>
                <th>Grade</th>
                <th style="min-width: 90px">Date of Joining</th>
                <th>Basic</th>
                <th>H/R</th>
                <th>M/A</th>
                <th>T/A</th>
                <th>F/A</th>
                <th>Gross</th>

                <th>OT Rate</th>
                <th>OT Hours</th>
                <th>OT Amount</th>
                <th>Pay Able</th>


            </tr>
            </thead>
            <tbody>
            <?php
            if(!empty(\Input::get('page')))
            {
                $counter = \Input::get('page')*config('hrm.report_row_per_page')-config('hrm.report_row_per_page');
            }else{
                $counter =0;
            }
            ?>
            @foreach($salaries as $salary)
                <tr>
                    <td>{{ ++$counter }}</td>
                    <td>{{ $salary->employee->name }}</td>
                    <td>{{ $salary->employee->employee_id }}</td>
                    <td>{{ @$salary->employee->designations[0]->name }}</td>
                    <td>{{ $salary->employee->grade->name }}</td>
                    <td>{{ $salary->employee->joining_date }}</td>
                    <td>{{ $salary->salaryStructure->basic }}</td>
                    <td>{{ $salary->salaryStructure->house_rent }}</td>
                    <td>{{ $salary->salaryStructure->m_a }}</td>
                    <td>{{ $salary->salaryStructure->t_a }}</td>
                    <td>{{ $salary->salaryStructure->f_a }}</td>
                    <td>{{ $salary->salaryStructure->gross }}</td>

                    <td>{{ $salary->ot_rate }}</td>
                    <td>{{ $salary->extra_ot_hour }}</td>
                    <td>{{ $salary->extra_ot_amount }}</td>
                    <td>{{ floor($salary->payable + $salary->extra_ot_amount) }}</td>


                </tr>

            @endforeach
            </tbody>
        </table>
        {!! $salaries->render() !!}

    </div>


    <div class="box-footer clearfix">

    </div>
</div>




@endsection
@section('script')
    <script>

        $(document).on('click', '#report_download_btn', function(event) {

            window.open($(this).attr('data-link')+$(location).attr('search'));


        });

    </script>
@endsection