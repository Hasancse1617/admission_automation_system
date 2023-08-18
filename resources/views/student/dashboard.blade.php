@extends('layouts.app')
@section('title','Student Dashboard')
@section('content')
    <div class="row">
        <div class="col-lg-3 col-6">
            <div class="small-box bg-dark">
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
            <div class="small-box bg-warning">
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
                        $totalAdmissionApply = \App\Models\AdmissionApply::where('student_id', Auth::user()->id)->get()->count();
                    @endphp
                    <h3>{{ $totalAdmissionApply }}</h3>
                    <p>TOTAL ADMISSION APPLY</p>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-6">
            <div class="small-box bg-success">
                <div class="inner">
                    @php
                        $totalScholarshipApply = \App\Models\ScholarshipApply::where('student_id', Auth::user()->id)->get()->count();
                    @endphp
                    <h3>{{ $totalScholarshipApply }}</h3>
                    <p>TOTAL SCHOLARSHIP APPLY</p>
                </div>
            </div>
        </div>
    </div>
@endsection
