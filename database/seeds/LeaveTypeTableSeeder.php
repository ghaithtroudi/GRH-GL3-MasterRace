<?php

use Illuminate\Database\Seeder;

use App\Model\User;

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
        $id = DB::table('users')->select('id')->orderBy('id','desc')->first()->id;

        for($i=0;$i<10;$i++)
        {
            DB::table('leave_types')->insert([
                'name' => $faker->name(),
                'created_by' => $faker->numberBetween(1,$id),
                'updated_by' => $faker->numberBetween(1,$id),
                'created_at' => $faker->date(),
                'updated_at' => date('Y-m-d',time())
            ]);
        }
    }
}
