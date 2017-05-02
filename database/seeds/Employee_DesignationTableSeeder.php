<?php

use Illuminate\Database\Seeder;

use Illuminate\Support\Facades\DB;

use App\Model\Employee;
use App\Model\Designation;
use App\Model\Grade;
use App\Model\Employee_Designation;


class Employee_DesignationTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $employees = Employee::all();

        $faker = \Faker\Factory::create();

        foreach( $employees as $employee )
        {
            $grade_id = $employee->grade_id;
            $grade = Grade::find($grade_id);

            $designation_id = $grade->designation_id;
            $designation = Designation::find($designation_id);

            DB::table('employee_designation')->insert([
                'designation_id' => $designation_id,
                'employee_id' => $employee->id,
                'status' => $faker->numberBetween(1,2),
                'created_at' => $faker->dateTime(),
                'updated_at' => $faker->dateTime(),
            ]);
        }
    }
}
