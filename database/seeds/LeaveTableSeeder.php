<?php

use Illuminate\Database\Seeder;

use App\Model\LeaveApplication;

class LeaveTableSeeder extends Seeder
{

    public function run()
    {
        $faker = \Faker\Factory::create();

        $leave_apps = LeaveApplication::all();

        foreach( $leave_apps as $leave_app)
        {
            DB::table('leaves')->insert([
                'leave_app_id' => $leave_app->id,
                'employee_id' => $leave_app->employee_id,
                'start_day' => $leave_app->start_day,
                'end_day' => $leave_app->end_day,
                'leave_type_id' => $leave_app->leave_type_id,
                'remark' => $faker->text(200),
                'created_at' => $faker->date(),
                'updated_at' => $faker->date()
            ]);
        }
    }
}
