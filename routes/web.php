<?php

use App\Http\Controllers\AdminOrganizationController;
use App\Http\Controllers\AdminStudentController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\StudentHelperController;
use App\Http\Controllers\OrganizationHelperController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\OrganizationController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;


Route::get('/', [DashboardController::class, 'home'])->name('home');

Route::middleware(['auth'])->group(function () {
// Dashboard
    Route::get('dashboard', [DashboardController::class,'index'])->name('dashboard');
    Route::get('admin/organization', [AdminOrganizationController::class,'adminOrganization'])->name('admin.organization');
   
    Route::get('admin/admission-notice', [AdminOrganizationController::class,'adminAdmissionNotice'])->name('admin.admission.notice');
    Route::get('admin/scholarship-notice', [AdminOrganizationController::class,'adminScholarshipNotice'])->name('admin.scholarship.notice');

    Route::get('admin/admission-view/{id}', [AdminOrganizationController::class,'adminAdmissionView'])->name('admin.admission.view');
    Route::get('admin/scholarship-view/{id}', [AdminOrganizationController::class,'adminScholarshipView'])->name('admin.scholarship.view');

    Route::get('admin/admission-payment', [AdminOrganizationController::class,'adminAdmissionPayment'])->name('admin.admission.payment');
    Route::get('admin/scholarship-payment', [AdminOrganizationController::class,'adminScholarshipPayment'])->name('admin.scholarship.payment');

    Route::get('admin/admission-application/{id}', [AdminOrganizationController::class,'adminAdmissionApplication'])->name('admin.admission.application');
    Route::get('admin/scholarship-application/{id}', [AdminOrganizationController::class,'adminScholarshipApplication'])->name('admin.scholarship.application');

    Route::get('admin/organization-admission-notice/{id}', [AdminOrganizationController::class,'adminOrganizationAdmissionNotice'])->name('admin.organization.admission.notice');
    Route::get('admin/organization-scholarship-notice/{id}', [AdminOrganizationController::class,'adminOrganizationScholarshipNotice'])->name('admin.organization.scholarship.notice');

    Route::get('admin/student', [AdminStudentController::class,'adminStudent'])->name('admin.student');
    Route::get('admin/view-cv/{id}', [AdminStudentController::class,'adminViewCV'])->name('admin.viewCV');
    Route::get('admin/student-payment', [AdminStudentController::class,'adminStudentPayment'])->name('admin.student.payment');
    
});

require __DIR__.'/auth.php';

// Student Route


   
Route::match(['get','post'],'student-login', [StudentController::class,'studentLogin'])->name('student_login');
Route::post('student-logout', [StudentController::class,'studentLogout'])->name('student_logout');
Route::match(['get','post'],'student-registration', [StudentController::class,'studentRegistration'])->name('student_registration');
Route::match(['get','post'],'student-payment', [StudentController::class,'studentPayment'])->name('student_payment');
Route::match(['get','post'],'student-cv', [StudentController::class,'studentCv'])->name('student_cv');

Route::middleware(['student'])->group(function(){

    Route::get('student-dashboard', [DashboardController::class,'studentDashboard'])->name('student_dashboard');
    Route::match(['get','post'],'my-cv', [StudentHelperController::class,'myCv'])->name('my_cv');
    Route::match(['get','post'],'all-admission', [StudentHelperController::class,'admissionList'])->name('admission.student.list');
    Route::match(['get','post'],'all-scholarship', [StudentHelperController::class,'scholarshipList'])->name('scholarship.student.list');
    Route::get('single-admission/{id}', [StudentHelperController::class,'admissionSingle'])->name('admission.single');
    Route::get('single-scholarship/{id}', [StudentHelperController::class,'scholarshipSingle'])->name('scholarship.single');
    Route::get('admission-apply/{id}', [StudentHelperController::class,'admissionApply'])->name('admission.apply');
    Route::get('scholarship-apply/{id}', [StudentHelperController::class,'scholarshipApply'])->name('scholarship.apply');

});

// Organization Route

Route::match(['post','get'],'organization-login', [OrganizationController::class,'organizationLogin'])->name('organization_login');
Route::match(['post','get'],'organization-registration', [OrganizationController::class,'organizationRegistration'])->name('organization_registration');
Route::post('organization-logout', [OrganizationController::class,'organizationLogout'])->name('organization_logout');

Route::middleware(['organization'])->group(function(){

    Route::get('organization-dashboard', [DashboardController::class,'organizationDashboard'])->name('organization_dashboard');
    Route::get('admission-all', [OrganizationController::class,'admissionNotice'])->name('admission.all');
    Route::match(['post','get'],'add-admission', [OrganizationController::class,'addAdmission'])->name('admission.add');
    Route::match(['post','get'],'edit-admission/{id}', [OrganizationController::class,'editAdmission'])->name('admission.edit');

    Route::get('scholarship-all', [OrganizationController::class,'scholarshipNotice'])->name('scholarship.all');
    Route::match(['post','get'],'add-scholarship', [OrganizationController::class,'addScholarship'])->name('scholarship.add');
    Route::match(['post','get'],'edit-scholarship/{id}', [OrganizationController::class,'editScholarship'])->name('scholarship.edit');

    Route::get('admission-list', [OrganizationHelperController::class,'admissionList'])->name('admission.list');
    Route::get('admission-application/{id}', [OrganizationHelperController::class,'admissionApplication'])->name('admission.application');
    Route::get('admission-application-approve-reject/{id}/{status}', [OrganizationHelperController::class,'admissionApplicationApproveReject'])->name('admission.application.approve.reject');
    
    Route::get('scholarship-list', [OrganizationHelperController::class,'scholarshipList'])->name('scholarship.list');
    Route::get('scholarship-application/{id}', [OrganizationHelperController::class,'scholarshipApplication'])->name('scholarship.application');
    Route::get('scholarship-application-approve-reject/{id}/{status}', [OrganizationHelperController::class,'scholarshipApplicationApproveReject'])->name('scholarship.application.approve.reject');

    Route::post('admission-payment', [OrganizationHelperController::class, 'admissionPayment'])->name('admission.payment');
    Route::post('scholarship-payment', [OrganizationHelperController::class, 'scholarshipPayment'])->name('scholarship.payment');

    Route::get('admission-view-cv/{student_id}', [OrganizationHelperController::class, 'viewCVAdmission'])->name('view.cv.admission');
    Route::get('scholarship-view-cv/{student_id}', [OrganizationHelperController::class, 'viewCVScholarship'])->name('view.cv.scholarship');
});