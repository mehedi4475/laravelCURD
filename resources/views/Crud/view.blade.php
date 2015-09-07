@include('/crud/header')

  <table class="table table-striped table-bordered table-hover">
    <thead>
      <tr>
        <th>#</th>
        <th>Name</th>
        <th>Roll</th>
        <th>Email</th>
        <th>Class</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
     @foreach($students as $student)
      <tr>
        <td>{{$student->id}}</td>
        <td>{{$student->name}}</td>
        <td>{{$student->roll}}</td>
        <td>{{$student->email}}</td>
        <td>{{$student->class}}</td>
          <td><i class="fa fa-shield"></i><a href="{{URL::to('/edit/'.$student->id)}}"> Edit</a></td>
          <td><i class="fa fa-shield"></i><a onclick="return deleteAlert();" href="{{URL::to('/delete/'.$student->id)}}"> Delete</a></td>
      </tr>
     @endforeach
    </tbody>
  </table>

  
@include('/crud/footer')