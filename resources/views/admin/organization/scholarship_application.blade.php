@extends('layouts.app')

@section('style')
    <!-- DataTables -->
    <link rel="stylesheet" href="{{ asset('themes/backend/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
@endsection

@section('title')
   Scholarship Application List
@endsection

@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card card-outline card-primary">
                <div class="card-header">
                    Scholarship Title : {{ $scholarship->title }}
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="table-responsive-sm">
                    <table id="table" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Applicant Name</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        @php
                           $total = 0;
                        @endphp
                        <tbody>
                        @foreach($scholarshipApplications as $index => $scholarshipApplication)
                            <tr>
                                <td>{{ $index+1 }}</td>
                                <td>{{ $scholarshipApplication->student->name }}</td>
                                <td>
                                    @php
                                        $checkPayment = \App\Models\ScholarshipPayment::where('student_id', $scholarshipApplication->student->id)->where('scholarship_id', $scholarshipApplication->id)->first();
                                        if($checkPayment){
                                            $total += $checkPayment->amount;
                                        }
                                    @endphp
                                    @if($checkPayment)
                                        {{ $checkPayment->amount }}
                                    @endif
                                </td>
                                <td>
                                    @if($scholarshipApplication->status==0)
                                        <a class="btn btn-dark btn-sm" href="#">Pending</a>
                                    @elseif($scholarshipApplication->status==1)
                                        @php
                                            $checkPayment = \App\Models\ScholarshipPayment::where('student_id', $scholarshipApplication->student->id)->where('scholarship_id', $scholarshipApplication->id)->first();
                                        @endphp
                                        {{-- {{ dd($checkPayment) }} --}}
                                        @if($checkPayment)
                                            <a href="#" class="btn btn-primary btn-sm">Approved</a>
                                            <a href="#" class="btn btn-primary btn-sm">Payment Success</a>
                                        @else
                                            <a href="#" class="btn btn-primary btn-sm">Approved</a>
                                            <a href="#" class="btn btn-primary btn-sm">Payment Pending</a>
                                        @endif
                                    @elseif($scholarshipApplication->status==2)
                                        <a class="btn btn-danger btn-sm" href="#">Rejected</a>
                                    @endif
                                </td>
                            </tr>
                        @endforeach
                            <tr>
                                <td colspan="2" class="text-right">
                                    Total
                                </td>
                                <td colspan="2">
                                    {{ $total }}
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    </div>
                </div>
                <!-- /.card-body -->
            </div>
        </div>
    </div>
@endsection

@section('script')
    <!-- DataTables -->
    <script src="{{ asset('themes/backend/bower_components/datatables.net/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('themes/backend/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js') }}"></script>

    <script>
        $(function () {
            $('#table').DataTable();
        })
    </script>
@endsection
