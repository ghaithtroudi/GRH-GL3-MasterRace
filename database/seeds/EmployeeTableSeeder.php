<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

use \App\Model\EmployeeType;
use \App\Model\EmployeeStatus;
class EmployeeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        $type_max = EmployeeType::orderBy('id','desc')->first()->id;
        $status_max = EmployeeStatus::orderBy('id','desc')->first()->id;
    	
        foreach (range(1,50) as $value) {
        	DB::table('employees')->insert([
	            'name' => $faker->name(),
	            'employee_id' => 'EMP-'.$faker->numberBetween(1,10000),
	            'gender' => $faker->numberBetween(1,2),
	            'dob' => $faker->date('Y-m-d'),
	            'father_name' => $faker->name(),
	            'mother_name'=>$faker->name(),
	            'present_address' => $faker->address(),
	            'permanent_address' => $faker->address(),
	            'primary_phone' => $faker->phoneNumber(),
	            'secondary_phone' => $faker->phoneNumber(),
	            'national_id' => $faker->randomNumber(5),
	            'birth_certificate' => $faker->randomNumber(5),
	            'passport' => $faker->randomNumber(5),
	            'image' => $faker->imageUrl(200, 200, 'cats', true, 'Fake'),
	            'status' => $faker->numberBetween(1,$status_max),
	            'branch_id' => $faker->numberBetween(1,2),
	            'department_id' => $faker->numberBetween(1,8),
	            'section_id' => $faker->numberBetween(1,16),
	            'grade_id' => $faker->numberBetween(1,10),
	            'joining_date' => $faker->date('Y-m-d'),
	            'created_at' => $faker->dateTime('now'),
	            'updated_at' => $faker->dateTime('now'),
                'type' => $faker->numberBetween(1,$type_max)
	        ]);
        }
    }
}
