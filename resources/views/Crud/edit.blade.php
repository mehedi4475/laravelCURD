@include('/crud/header')

            
@if(Session::get ('message'))
       <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        {!! Session::get ('message') !!}
      </div>   
   @endif()
   
    
        {!! Form::open(array('url' => 'updateStudent')) !!}
        
    
	<legend>Update Form</legend>

	<div class="form-group">
		<label for="">Name</label>
		<input type="text" class="form-control" name="name" id="" placeholder="Name" value="{{$student->name}}">
	</div>
    
    <div class="form-group">		
		<input type="hidden" class="form-control" name="id" id="" placeholder="Name" value="{{$student->id}}">
	</div>
	
	<div class="form-group">
		<label for="">Roll Number</label>
		<input type="text" class="form-control" name="roll" id="" placeholder="Roll Number" value="{{$student->roll}}">
	</div>

	<div class="form-group">
		<label for="">Email</label>
		<input type="text" class="form-control" name="email" id="" placeholder="email" value="{{$student->email}}">
	</div>

	<div class="form-group">
		<label for="">Class</label>
		<input type="text" class="form-control" name="myclass" id="" placeholder="Class"  value="{{$student->class}}">
	</div>


	<button type="submit" class="btn btn-primary">Submit</button>

        {!! Form::close() !!}


    
@include('/crud/footer')