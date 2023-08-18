<?php

namespace App\Http\Controllers;

use App\Models\Education;
use App\Models\Project;
use App\Models\StudentDetail;
use App\Models\StudentPayment;
use App\Models\User;
use Illuminate\Http\Request;

class AdminStudentController extends Controller
{
    public function adminStudent(){
        $students = User::with('studentPayment')->where('role', 2)->get();
        return view("admin.student.all", compact('students'));
    }

    public function adminViewCV($id){
        $studentDetail = StudentDetail::where('student_id', $id)->first();
        $projects = Project::where('student_id', $id)->get();
        $educations = Education::where('student_id', $id)->get();

        return view("admin.student.cv", compact('studentDetail','projects','educations'));
    }

    public function adminStudentPayment(){
        $payments = StudentPayment::with('student')->where('status', 1)->get();
        return view("admin.student.payment", compact('payments'));
    }
}
