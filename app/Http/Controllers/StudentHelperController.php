<?php

namespace App\Http\Controllers;

use App\Models\Admission;
use App\Models\AdmissionApply;
use App\Models\Education;
use App\Models\Project;
use App\Models\Scholarship;
use App\Models\ScholarshipApply;
use App\Models\StudentDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class StudentHelperController extends Controller
{
    public function myCv(){
        $studentDetail = StudentDetail::where('student_id', Auth::user()->id)->first();
        $projects = Project::where('student_id', Auth::user()->id)->get();
        $educations = Education::where('student_id', Auth::user()->id)->get();

        return view("student.my_cv", compact('studentDetail','projects','educations'));
    }

    public function admissionList(){
        $admissions = Admission::with('organization')->where('status', 1)->get();
        return view('student.all_admission', compact('admissions'));
    }

    public function scholarshipList(){
        $scholarships = Scholarship::with('organization')->where('status', 1)->get();
        return view('student.all_scholarship', compact('scholarships'));
    }

    public function admissionSingle($id){
        $admission = Admission::where('id', $id)->first();
        return view('student.single_admission', compact('admission'));
    }

    public function scholarshipSingle($id){
        $scholarship = Scholarship::where('id', $id)->first();
        return view('student.single_scholarship', compact('scholarship'));
    }

    public function admissionApply($id){
        $admission = Admission::where('id', $id)->first();
        $admissionApply = new AdmissionApply();
        $admissionApply->organization_id = $admission->organization_id;
        $admissionApply->admission_id = $id;
        $admissionApply->student_id = Auth::user()->id;
        $admissionApply->status = 0;
        $admissionApply->save();
        return redirect()->back()->with('message', 'Apply successful');
    }

    public function scholarshipApply($id){
        $scholarship = Scholarship::where('id', $id)->first();
        $scholarshipApply = new ScholarshipApply();
        $scholarshipApply->organization_id = $scholarship->organization_id;
        $scholarshipApply->scholarship_id = $id;
        $scholarshipApply->student_id = Auth::user()->id;
        $scholarshipApply->status = 0;
        $scholarshipApply->save();
        return redirect()->back()->with('message', 'Apply successful');
    }
}
