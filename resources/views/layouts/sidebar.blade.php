<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
   
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu"> 

      <li class=" @if($parent_menu == 'setting') active @endif treeview">
        <a href="#">
          <i class="fa fa-gear"></i> <span>Company Basic Settings </span>
          <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="treeview-menu">
          
          <li class="@if($active == 'organization') active @endif">
            <a href="{{ url('organization') }}"><i class="fa fa-circle-o"></i>Organization</a>
          </li>
         
          <li class="@if($active == 'branch') active @endif">
            <a href="{{ url('branch') }}"><i class="fa fa-circle-o"></i>Branch</a>
          </li>
          <li class="@if($active == 'department') active @endif">
            <a href="{{ url('department') }}"><i class="fa fa-circle-o"></i>Department</a>
          </li>
          <li class="@if($active == 'section') active @endif">
            <a href="{{ url('section') }}"><i class="fa fa-circle-o"></i>Section</a>
          </li>
          <li class="@if($active == 'line') active @endif">
            <a href="{{ url('line') }}"><i class="fa fa-circle-o"></i>Line</a>
          </li>
          <li class="@if($active == 'designation') active @endif">
            <a href="{{ url('designation') }}"><i class="fa fa-circle-o"></i>Designation</a>
          </li>
          <li class="@if($active == 'grade') active @endif">
            <a href="{{ url('grade') }}"><i class="fa fa-circle-o"></i>Grade</a>
          </li>
        </ul>
      </li>
      <li class="@if($parent_menu == 'employee') active @endif treeview">
        <a href="#">
          <i class="fa fa-user"></i> <span>Employee</span>
          <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class ="treeview-menu">
          <li class=" @if($active == 'employee.employee') active @endif ">
            <a href="{{ url('employee') }}"><i class="fa fa-circle-o"></i>Employee</a>
          </li>
          <li class=" @if($active == 'employee.type') active @endif ">
            <a href="{{ url('employee_type') }}"><i class="fa fa-circle-o"></i>Type</a>
          </li>
          <li class=" @if($active == 'employee.status') active @endif ">
            <a href="{{ url('employee_status') }}"><i class="fa fa-circle-o"></i>Status</a>
          </li>
        </ul>

      </li>


      <li class=" @if($parent_menu == 'leave') active @endif treeview">
        <a href="#">
          <i class="fa fa-sticky-note"></i> <span>Leaves </span>
          <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="treeview-menu">
          
          <li class="@if($active == 'leavetype') active @endif">
            <a href="{{ url('leavetype') }}"><i class="fa fa-circle-o"></i>Leave Types</a>
          </li>
         
          <li class="@if($active == 'holiday') active @endif">
            <a href="{{ url('holiday') }}"><i class="fa fa-circle-o"></i>Holidays</a>
          </li>

          <li class="@if($active == 'holiday_type') active @endif">
            <a href="{{ url('holiday_type') }}"><i class="fa fa-circle-o"></i>Holiday Types</a>
          </li>

          <!--<li class="@if($active == 'leaveemployee') active @endif">
            <a href="{{ url('leaveemployee') }}"><i class="fa fa-circle-o"></i>Employee Leave</a>
          </li>-->

          <li class="@if($active == 'leave_application') active @endif">
            <a href="{{ url('leave_application') }}"><i class="fa fa-circle-o"></i>Leave Application</a>
          </li>

          <li class="@if($active == 'leave_leave') active @endif">
            <a href="{{ url('leave_leave') }}"><i class="fa fa-circle-o"></i>Leave</a>
          </li>
        </ul>
      </li>


      <li class=" @if($parent_menu == 'salary') active @endif treeview">
        <a href="#">
          <i class="fa fa-money"></i> <span>Salary </span>
          <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="  treeview-menu">

          <li class="@if($active == 'structure') active @endif">
            <a href="{{ url('salary/structure') }}"><i class="fa fa-circle-o"></i>Salary Structures</a>
          </li>
          <li class="@if($active == 'register') active @endif">
            <a href="{{ url('salary/register') }}"><i class="fa fa-circle-o"></i>Salary Register</a>
          </li>
          <li class="@if($active == 'structure') active @endif">
            <a href="{{ url('salary/create') }}"><i class="fa fa-circle-o"></i>Salary Generation</a>
          </li>

        </ul>
      </li>

      <li class=" @if($parent_menu == 'Attendance Setting') active @endif treeview">
        <a href="#">
         <i class="fa fa-user"></i> <span>Attendance </span>
          <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="  treeview-menu">

          <li class="@if($active == 'attendance') active @endif">
            <a href="{{ url('attendance') }}"><i class="fa fa-circle-o"></i>Manual Attendance</a>

          </li>
          <li class="@if($active == 'upload') active @endif">
            <a href="{{ url('attendance/upload') }}"><i class="fa fa-circle-o"></i>Upload Attendance</a>

          </li>

        </ul>
      </li>

      <li class=" @if($parent_menu == 'Setting') active @endif treeview">

        <a href="#">
          <i class="fa fa-gear"></i> <span>All System Setting</span>
          <i class="fa fa-angle-left pull-right"></i>
        </a>

        <ul class="  treeview-menu">
           <li class="@if($active == 'setting') active @endif">
            <a href="{{ url('setting') }}"><i class="fa fa-circle-o"></i>Setting</a>
          </li>
        </ul>

      </li>

      <li class=" @if($parent_menu == 'reports') active @endif treeview">

        <a href="#">
          <i class="fa fa-gear"></i> <span>Reports</span>
          <i class="fa fa-angle-left pull-right"></i>
        </a>

        <ul class="  treeview-menu">
          <li class="@if($active == 'salary') active @endif">
            <a href="{{ url('report/salary') }}"><i class="fa fa-circle-o"></i>Salary</a>
          </li>
          <li class="@if($active == 'payslip') active @endif">
            <a href="{{ url('report/payslip') }}"><i class="fa fa-circle-o"></i>Payslip</a>
          </li>
          <li class="@if($active == 'attendance') active @endif">
            <a href="{{ url('report/attendance') }}"><i class="fa fa-circle-o"></i>Attendance</a>
          </li>
          <li class="@if($active == 'extra_ot') active @endif">
            <a href="{{ url('report/extra-ot') }}"><i class="fa fa-circle-o"></i>Extra OT Sheet</a>
          </li>
        </ul>

      </li>

      <li class=" @if($parent_menu == 'admin') active @endif treeview">

        <a href="#">
          <i class="fa fa-gear"></i> <span>Administration</span>
          <i class="fa fa-angle-left pull-right"></i>
        </a>

        <ul class="  treeview-menu">
          <li class="@if($active == 'user') active @endif">
            <a href="{{ url('user') }}"><i class="fa fa-circle-o"></i>Users</a>
          </li>
          <li class="@if($active == 'role') active @endif">
            <a href="{{ url('admin/role') }}"><i class="fa fa-circle-o"></i>Role</a>
          </li>
          <li class="@if($active == 'permission') active @endif">
            <a href="{{ url('admin/permission') }}"><i class="fa fa-circle-o"></i>Permissions</a>
          </li>

        </ul>

      </li>

   

    </ul>
  </section>
<!-- /.sidebar -->
</aside>