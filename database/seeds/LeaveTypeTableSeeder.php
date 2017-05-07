<?php

use Illuminate\Database\Seeder;



class LeaveTypeTableSeeder extends Seeder
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
            \DB::table('leave_types')->insert([
                'name' => $faker->name(),
                'created_at' => $faker->date(),
                'updated_at' => date('Y-m-d',time())
            ]);
        }
    }
}
