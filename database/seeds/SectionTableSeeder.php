<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class SectionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
    	
        foreach (range(1,16) as $value) {

            $depart = DB::table('departments')->where('id',$faker->numberBetween(1,8));

        	DB::table('sections')->insert([
	            'name' => $faker->name(),
	            'description' => $faker->text(),
	            'department_id' => $depart->id,
	            'branch_id' => $depart->branch_id,
	            'created_at' => $faker->dateTime('now'),
	            'updated_at' => $faker->dateTime('now'),
	        ]);
        }
    }
}
