<?php

use Illuminate\Database\Seeder;

class EmployeeStatusTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        for($i=0;$i<10;$i++)
        {
            \DB::table('employee_statuses')->insert([
                'name' => $faker->name(),
                'created_at' => date('Y-m-d',time()),
                'updated_at' => date('Y_m_d',time())
            ]);
        }
    }
}
