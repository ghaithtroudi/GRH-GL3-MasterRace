<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        Model::unguard();
        \DB::table('users')->truncate();;
        \DB::table('organizations')->truncate();;
        \DB::table('branches')->truncate();;
        \DB::table('departments')->truncate();;
        \DB::table('sections')->truncate();;
        \DB::table('lines')->truncate();;
        \DB::table('designations')->truncate();;
        \DB::table('employee_types')->truncate();;
        \DB::table('employee_statuses')->truncate();;
        \DB::table('employees')->truncate();;
        \DB::table('employee_designation')->truncate();;
        \DB::table('leave_types')->truncate();;
        \DB::table('holiday_types')->truncate();;
        \DB::table('holidays')->truncate();;
        // \DB::truncate('users');
        // \DB::truncate('users');

        $this->call(userSeeder::class);
        $this->call(DepartmentTableSeeder::class);
        $this->call(DesignationTableSeeder::class);
        $this->call(EmployeeTypeTableSeeder::class);
        $this->call(EmployeeStatusTableSeeder::class);
        $this->call(EmployeeTableSeeder::class);
        $this->call(LineTableSeeder::class);
        $this->call(OrganizationTableSeeder::class);
        $this->call(SectionTableSeeder::class);
        $this->call(BranchTableSeeder::class);
        $this->call(Employee_DesignationTableSeeder::class);
        $this->call(LeaveTypeTableSeeder::class);
        $this->call(HolidayTypeTableSeeder::class);
        $this->call(HolidayTableSeeder::class);
        
        Model::reguard();
    }
}
