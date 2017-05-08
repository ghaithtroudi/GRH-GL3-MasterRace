<?php

use Illuminate\Database\Seeder;

class DesignationTableSeeder extends Seeder
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

            $section = \DB::table('sections')->where('id',$faker->numberBetween(1,16));

        	DB::table('designations')->insert([
	            'name' => $faker->name(),
                'section_id' => $section->id,
                'department_id' => $section->department_id,
                'branch_id' => $section->branch_id,
	            'description' => $faker->text(),
	            'created_at' => $faker->dateTime('now'),
	            'updated_at' => $faker->dateTime('now'),
	        ]);
        }

    }
}
