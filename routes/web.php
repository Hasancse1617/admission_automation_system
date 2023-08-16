<?php

use App\Http\Controllers\StudentController;
use App\Http\Controllers\StudentHelperController;
use App\Http\Controllers\OrganizationHelperController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\OrganizationController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;


// Route::get('/', function () {
//     return redirect()->route('login');
// });



Route::middleware(['auth'])->group(function () {
// Dashboard
    Route::get('dashboard', [DashboardController::class,'index'])->name('dashboard');

// User Management
    Route::get('user', [UserController::class,'index'])->name('user.all');
    Route::get('user/add',  [UserController::class,'add'])->name('user.add');
    Route::post('user/add',  [UserController::class,'addPost']);
    Route::get('user/edit/{user}',  [UserController::class,'edit'])->name('user.edit');
    Route::post('user/edit/{user}',  [UserController::class,'editPost']);

//Administrator Area
// Unit
    Route::get('unit', [UnitController::class,'index'])->name('unit');
    Route::get('unit/add', [UnitController::class,'add'])->name('unit.add');
    Route::post('unit/add', [UnitController::class,'addPost']);
    Route::get('unit/edit/{unit}', [UnitController::class,'edit'])->name('unit.edit');
    Route::post('unit/edit/{unit}', [UnitController::class,'editPost']);

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
    Route::match(['get','post'],'all-admission', [StudentHelperController::class,'admissionList'])->name('admission.list');
    Route::match(['get','post'],'all-scholarship', [StudentHelperController::class,'scholarshipList'])->name('scholarship.list');
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
    
});