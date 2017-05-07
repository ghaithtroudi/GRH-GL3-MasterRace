<?php

use Illuminate\Database\Seeder;

use Illuminate\Support\Facades\DB;

class EmployeeTypeTableSeeder extends Seeder
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
            DB::table('employee_types')->insert([
                'name' => $faker->name(),
                'created_at' => date(time()),
                'updated_at' => date(time())
            ]);
        }
    }
}
