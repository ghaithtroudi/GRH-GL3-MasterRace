@extends('layouts.master')

@section('title','Department')
@section('sidebar')

   @include('layouts.sidebar',['active' =>'designation','parent_menu'=>'setting'])

@endsection

@section('content')
  <!-- Info boxes -->
         
        	<div class="box box-primary">
            
              <h3 class="box-title padding-left">Designation</h3>
           
              <div class="box-body">
                
                <div class="col-md-12">
				
					<div class="col-sm-8">
	                  
	                  {!! $edit->message !!}	                 
	                  {!! $edit->header !!}


	                  <div class="form-group">
	                     
	                      <div class="col-sm-offset-2 col-sm-12">
	                       {!! $edit->render('branch_id') !!}
	                      </div>
	                    </div>
	                     <div class="form-group">
	                     
	                      <div class="col-sm-offset-2 col-sm-12">
	                       {!! $edit->render('department_id') !!}
	                      </div>
	                    </div>
	                     <div class="form-group">
	                     
	                      <div class="col-sm-offset-2 col-sm-12">
	                        {!! $edit->render('section_id') !!}
	                      </div>
	                    </div>
	                    <div class="form-group">
	                     
	                      <div class="col-sm-offset-2 col-sm-12">
	                        {!! $edit->render('name') !!}
	                      </div>
	                    </div>
	                    <div class="form-group">
	                      
	                      <div class=" col-sm-offset-2 col-sm-12">
	                        {!! $edit->render('description') !!}
	                      </div>
	                    </div>
	                     	                                        
	                    <div class="form-group">
	                      <div class="col-sm-offset-2 col-sm-9">
	                        {!! $edit->footer !!}
	                      </div>
	                    </div>
	                  
	                </div>
					
				</div>
			<div class="box-footer clearfix">
		                  
                </div>
            </div>  

        </div>
            
          
          
@endsection

@section('script')
  <script>
  	jQuery(document).ready(function($) {
	  $('form').validate({ 
        
        rules: {
            
            name: {
                required: true,
            },
            description: {
               required: true,
            },
            

        },

    });
});
  </script>
@endsection
