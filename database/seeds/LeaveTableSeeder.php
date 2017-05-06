<?php

use Illuminate\Database\Seeder;

use Illuminate\Support\Facades\DB;

class LeaveTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        DB::table('leaves')->insert([

        ]);
    }
}
