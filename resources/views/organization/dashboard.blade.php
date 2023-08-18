@extends('layouts.app')
@section('title','Organization Dashboard')
@section('content')
    <div class="row">
        <div class="col-lg-3 col-6">
            <div class="small-box bg-dark">
                <div class="inner">
                    @php
                        $totalAdmissionNotice = \App\Models\Admission::where('organization_id', Auth::user()->id)->get()->count();
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
                        $totalScholarshipNotice = \App\Models\Scholarship::where('organization_id', Auth::user()->id)->get()->count();
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
                        $totalAdmissionApplied = \App\Models\AdmissionApply::where('organization_id', Auth::user()->id)->get()->count();
                    @endphp
                    <h3>{{ $totalAdmissionApplied }}</h3>
                    <p>TOTAL ADMISSION APPLIED</p>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-6">
            <div class="small-box bg-success">
                <div class="inner">
                    @php
                        $totalScholarshipApplied = \App\Models\ScholarshipApply::where('organization_id', Auth::user()->id)->get()->count();
                    @endphp
                    <h3>{{ $totalScholarshipApplied }}</h3>
                    <p>TOTAL SCHOLARSHIP APPLIED</p>
                </div>
            </div>
        </div>
    </div>
@endsection
