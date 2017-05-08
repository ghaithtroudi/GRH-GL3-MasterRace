<?php

use Illuminate\Database\Seeder;

class GradeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       $faker = \Faker\Factory::create();
    	
        foreach (range(1,10) as $value) {

            $designation = DB::table('designations')->where('id',$faker->numberBetween(1,10))->first();

        	DB::table('grades')->insert([
	            'name' => $faker->name(),
                'designation_id' => $designation->id,
	            'section_id' => $designation->section_id,
	            'department_id' => $designation->department_id,
	            'branch_id' => $designation->branch_id,
	            'created_at' => $faker->dateTime('now'),
	            'updated_at' => $faker->dateTime('now'),
	        ]);
        }
    }
}
