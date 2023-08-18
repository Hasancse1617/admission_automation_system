<?php

namespace App\Http\Controllers;

use App\Models\Admission;
use App\Models\AdmissionApply;
use App\Models\Scholarship;
use App\Models\ScholarshipApply;
use App\Models\User;
use Illuminate\Http\Request;

class AdminOrganizationController extends Controller
{
    public function adminOrganization(){
        $organizations = User::where('role', 3)->get();
        return view("admin.organization.all", compact('organizations'));
    }

    public function adminAdmissionNotice(){
        $admissions = Admission::where('status', 1)->get();
        return view("admin.organization.admission_notice", compact('admissions'));
    }

    public function adminScholarshipNotice(){
        $scholarships = Scholarship::where('status', 1)->get();
        return view("admin.organization.scholarship_notice", compact('scholarships'));
    }

    public function adminAdmissionView($id){
        $admission = Admission::where('id', $id)->first();
        return view("admin.organization.view_admission_notice", compact('admission'));
    }

    public function adminScholarshipView($id){
        $scholarship = Scholarship::where('id', $id)->first();
        return view("admin.organization.view_scholarship_notice", compact('scholarship'));
    }

    public function adminAdmissionApplication($id){
        $admissionApplications = AdmissionApply::with('student')->where('admission_id', $id)->get();
        $admission = Admission::where(['id'=>$id])->first();
        return view("admin.organization.admission_application", compact('admissionApplications','admission'));
    }

    public function adminScholarshipApplication($id){
        $scholarshipApplications = ScholarshipApply::with('student')->where('scholarship_id', $id)->get();
        $scholarship = Scholarship::where(['id'=>$id])->first();
        return view("admin.organization.scholarship_application", compact('scholarshipApplications','scholarship'));
    }

    public function adminOrganizationAdmissionNotice($id){
        $admissions = Admission::where('organization_id', $id)->where('status', 1)->get();
        return view("admin.organization.organization_admission_notice", compact('admissions'));
    }

    public function adminOrganizationScholarshipNotice($id){
        $scholarships = Scholarship::where('organization_id', $id)->where('status', 1)->get();
        return view("admin.organization.organization_scholarship_notice", compact('scholarships'));
    }
}
