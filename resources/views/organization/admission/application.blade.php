@extends('layouts.app')

@section('style')
    <!-- DataTables -->
    <link rel="stylesheet" href="{{ asset('themes/backend/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
@endsection

@section('title')
    Admission Application List
@endsection

@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card card-outline card-primary">
                <div class="card-header">
                    Admission Title : {{ $admission->title }}
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
                        {{-- {{ $admissionApplications }} --}}
                        <tbody>
                        @foreach($admissionApplications as $index => $admissionApplication)
                            <tr>
                                <td>{{ $index+1 }}</td>
                                <td>{{ $admissionApplication->student->name }}</td>
                                {{-- <td> --}}
                                    {{-- @php
                                        $application = \App\Models\AdmissionApply::where('admission_id', $admission->id)->get()->count();
                                    @endphp
                                    @if($application){{ $application }}@endif --}}
                                {{-- </td> --}}
                                <td>
                                    @if($admissionApplication->status==0)
                                        <a class="btn btn-dark btn-sm" href="{{ route("admission.application.approve.reject", ['id'=>$admissionApplication->id,'status'=>1]) }}">Approve</a>
                                        <a class="btn btn-danger btn-sm" href="{{ route("admission.application.approve.reject", ['id'=>$admissionApplication->id,'status'=>2]) }}">Reject</a>
                                    @elseif($admissionApplication->status==1)
                                        @php
                                            $checkPayment = \App\Models\AdmissionPayment::where('student_id', $admissionApplication->student->id)->where('admission_id', $admissionApplication->id)->first();
                                        @endphp
                                        {{-- {{ dd($checkPayment) }} --}}
                                        @if($checkPayment)
                                            <a href="{{ route("view.cv.admission", ['student_id' => $admissionApplication->student->id]) }}" class="btn btn-primary btn-sm">View CV</a>
                                            <a href="#" class="btn btn-primary btn-sm">Approved</a>
                                        @else
                                            <form method="POST" action="{{ route('admission.payment') }}">
                                                @csrf
                                                <input type="hidden" name="admission_id" value="{{ $admissionApplication->id }}">
                                                <input type="hidden" name="student_id" value="{{ $admissionApplication->student->id }}">
                                                <input type="number" min="500" max="1000" name="amount" placeholder="Amount" required>
                                                <input type="text" name="card" placeholder="Card" required>
                                                <button type="submit" class="btn btn-info btn-sm">Payment</button>
                                                <a href="#" class="btn btn-primary btn-sm">Approved</a>
                                            </form>
                                        @endif
                                    @elseif($admissionApplication->status==2)
                                        <a class="btn btn-danger btn-sm" href="#">Rejected</a>
                                    @endif
                                </td>
                            </tr>
                        @endforeach
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
