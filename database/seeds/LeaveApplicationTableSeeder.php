<?php

use Illuminate\Database\Seeder;

use App\Model\Employee;

use Illuminate\Support\Facades\DB;

class LeaveApplicationTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        //$employee_max = Employee::orderBy('id','desc')->first()->id;

        $employee_max = DB::table('employees')->select('id')->orderBy('id','desc')->first()->id;
        $type_max = DB::table('leave_types')->select('id')->orderBy('id','desc')->first()->id;

        for($i=0;$i<10;$i++)
        {
            DB::table('leave_applications')->insert([
                'employee_id' => $faker->numberBetween(1,$employee_max),
                'start_day' => $faker->date(),
                'end_day' => $faker->date(),
                'leave_type_id' => $faker->numberBetween(1,$type_max),
                'reasons' => $faker->text(200),
                'state' => 1,
                'created_at' => $faker->date(),
                'updated_at' => $faker->date()
            ]);
        }
    }
}
