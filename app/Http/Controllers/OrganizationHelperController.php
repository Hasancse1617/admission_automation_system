<?php

namespace App\Http\Controllers;

use App\Models\Admission;
use App\Models\AdmissionApply;
use App\Models\Scholarship;
use App\Models\ScholarshipApply;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OrganizationHelperController extends Controller
{
    public function admissionList(){
        $admissions = Admission::where(['organization_id'=>Auth::user()->id])->get();
        return view("organization.admission.list", compact('admissions'));
    }

    public function scholarshipList(){
        $scholarships = Scholarship::where(['organization_id'=>Auth::user()->id])->get();
        return view("organization.scholarship.list", compact('scholarships'));
    }

    public function admissionApplication($id){
        $admissionApplications = AdmissionApply::with('student')->where(['organization_id'=>Auth::user()->id])->where('admission_id', $id)->get();
        $admission = Admission::where(['id'=>$id])->first();
        return view("organization.admission.application", compact('admissionApplications','admission'));
    }

    public function scholarshipApplication($id){
        $scholarshipApplications = ScholarshipApply::with('student')->where(['organization_id'=>Auth::user()->id])->where('scholarship_id', $id)->get();
        $scholarship = Scholarship::where(['id'=>$id])->first();
        return view("organization.scholarship.application", compact('scholarshipApplications','scholarship'));
    }

    public function admissionApplicationApproveReject($id,$status){
        $application = AdmissionApply::where('id', $id)->first();
        $application->status = $status;
        $application->save();
        if($status==1){
            return redirect()->back()->with('message', 'Application Accepted');
        }else{
            return redirect()->back()->with('error', 'Application Rejected');
        }
    }

    public function scholarshipApplicationApproveReject($id,$status){
        $application = ScholarshipApply::where('id', $id)->first();
        $application->status = $status;
        $application->save();
        if($status==1){
            return redirect()->back()->with('message', 'Application Accepted');
        }else{
            return redirect()->back()->with('error', 'Application Rejected');
        }
    }
}
