@extends('layouts.app')
@section('title','Dashboard')
@section('content')
    <div class="row">

        <div class="col-lg-3 col-6">
            <div class="small-box bg-dark">
                <div class="inner">
                    @php
                        $totalOrganization = \App\Models\User::where('role', 3)->get()->count();
                    @endphp
                    <h3>{{ $totalOrganization }}</h3>
                    <p>TOTAL ORGANIZATION</p>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-6">
            <div class="small-box bg-warning">
                <div class="inner">
                    @php
                        $totalStudent = \App\Models\User::where('role', 2)->get()->count();
                    @endphp
                    <h3>{{ $totalStudent }}</h3>
                    <p>TOTAL STUDENT</p>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-6">
            <div class="small-box bg-secondary">
                <div class="inner">
                    @php
                        $totalAdmissionNotice = \App\Models\Admission::where('status', 1)->get()->count();
                    @endphp
                    <h3>{{ $totalAdmissionNotice }}</h3>
                    <p>TOTAL ADMISSION NOTICE</p>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-6">
            <div class="small-box bg-success">
                <div class="inner">
                    @php
                        $totalScholarshipNotice = \App\Models\Scholarship::where('status', 1)->get()->count();
                    @endphp
                    <h3>{{ $totalScholarshipNotice }}</h3>
                    <p>TOTAL SCHOLARSHIP NOTICE</p>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-6">
            <div class="small-box bg-info">
                <div class="inner">
                    @php
                        $totalAdmissionPayment = \App\Models\AdmissionPayment::where('status', 1)->get()->sum('amount');
                        $totalScholarshipPayment = \App\Models\ScholarshipPayment::where('status', 1)->get()->sum('amount');
                    @endphp
                    <h3>BDT {{ $totalAdmissionPayment + $totalScholarshipPayment }}</h3>
                    <p>TOTAL ORGANIZATION PAYMENT</p>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-6">
            <div class="small-box bg-dark">
                <div class="inner">
                    @php
                        $totalStudentPayment = \App\Models\StudentPayment::where('status', 1)->get()->sum('amount');
                    @endphp
                    <h3>BDT {{ $totalStudentPayment }}</h3>
                    <p>TOTAL STUDENT PAYMENT</p>
                </div>
            </div>
        </div>

    </div>
@endsection
