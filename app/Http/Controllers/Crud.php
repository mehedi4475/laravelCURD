<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Model\Students;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;

class Crud extends Controller
{
    //
    
    public function index(){
        return view('Crud/index');
    }
    
    public function view(){
        $students = Students::all();
        return view('Crud/view')->with('students',$students);
    }
    
     public function saveStudent(Request $request){
        $student = new Students();
        $student->name = $request->input('name');
        $student->roll = $request->input('roll');
        $student->email = $request->input('email');
        $student->class = $request->input('myclass');
       
        $student->save();
        session::flash('message','Student information save successfully');
         
         return redirect ('/');
       
   }
    
   public function edit($id){
       $student = Students::find($id);
       return view('Crud/edit')->with('student',$student);
   }   
    
   public function updateStudent(Request $request){
        
       $id = $request->input('id');
       $student = Students::find($id);
       $student->name = $request->input('name',50);
       $student->roll = $request->input('roll',50);
       $student->email = $request->input('email',50);
       $student->class = $request->input('myclass',50);
       
       $student->save();
       return redirect('/view');
          
   }    
    
   public function delete($id){
        Students::find($id)->delete();
        return redirect('/view');
   }
}

