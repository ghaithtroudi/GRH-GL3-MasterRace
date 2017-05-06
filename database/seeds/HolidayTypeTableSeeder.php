<?php

use Illuminate\Database\Seeder;

class HolidayTypeTableSeeder extends Seeder
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
            \DB::table('holiday_types')->insert([
                'name' => $faker->name(),
                'created_at' => $faker->date(),
                'updated_at' => date_create(time())
            ]);
        }

    }
}
