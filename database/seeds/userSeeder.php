<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class userSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
    	foreach (range(1,10) as $index) {
	        DB::table('users')->insert([
	            'name' => $faker->name(),
	            'password' => bcrypt($faker->password()),
	            'email' => $faker->email(),
	            'role_id' => 1,//$faker->randomElement([1,2]),
	            'status' =>$faker->randomElement([1,2,3]),
	            'branch_id' =>$faker->randomElement([1,2]),
	            'all_access' =>$faker->randomElement([0,1]),
	            'created_at' => $faker->dateTime('now'),
	            'updated_at' => $faker->dateTime('now'),
	        ]);
        }
        DB::table('users')->insert([
            'name' => "User",
            'password' => password_hash('0123456789',CRYPT_SHA256),
            'email' => "User@User.com",
            'role_id' => 1,//$faker->randomElement([1,2]),
            'status' =>$faker->randomElement([1,2,3]),
            'branch_id' =>$faker->randomElement([1,2]),
            'all_access' =>$faker->randomElement([0,1]),
            'created_at' => $faker->dateTime('now'),
            'updated_at' => $faker->dateTime('now'),
        ]);
    }
}
