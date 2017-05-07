<?php

use Illuminate\Database\Seeder;

use Illuminate\Support\Facades\DB;
class HolidayTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        $last_id = DB::table('holiday_types')->select('id')->orderBy('id','desc')->get()[0]->id;

        DB::table('holidays')->insert([
            'start' => $faker->date(),
            'end' => $faker->date(),
            'name' => $faker->name(),
            'type' => $faker->numberBetween(1,$last_id),
            'created_at' => $faker->date(),
            'updated_at' => date_create(time())
        ]);
    }
}
