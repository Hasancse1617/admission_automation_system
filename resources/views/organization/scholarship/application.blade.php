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

                        <tbody>
                        @foreach($scholarshipApplications as $index => $scholarshipApplication)
                            <tr>
                                <td>{{ $index+1 }}</td>
                                <td>{{ $scholarshipApplication->student->name }}</td>
                                {{-- <td> --}}
                                    {{-- @php
                                        $application = \App\Models\ScholarshipApply::where('scholarship_id', $scholarship->id)->get()->count();
                                    @endphp
                                    @if($application){{ $application }}@endif --}}
                                {{-- </td> --}}
                                <td>
                                    @if($scholarshipApplication->status==0)
                                        <a class="btn btn-dark btn-sm" href="{{ route("scholarship.application.approve.reject", ['id'=>$scholarshipApplication->id,'status'=>1]) }}">Approve</a>
                                        <a class="btn btn-danger btn-sm" href="{{ route("scholarship.application.approve.reject", ['id'=>$scholarshipApplication->id,'status'=>2]) }}">Reject</a>
                                    @elseif($scholarshipApplication->status==1)
                                        @php
                                            $checkPayment = \App\Models\ScholarshipPayment::where('student_id', $scholarshipApplication->student->id)->where('scholarship_id', $scholarshipApplication->id)->first();
                                        @endphp
                                        {{-- {{ dd($checkPayment) }} --}}
                                        @if($checkPayment)
                                            <a href="{{ route("view.cv.scholarship", ['student_id' => $scholarshipApplication->student->id]) }}" class="btn btn-primary btn-sm">View CV</a>
                                            <a href="#" class="btn btn-primary btn-sm">Approved</a>
                                        @else
                                            <form method="POST" action="{{ route('scholarship.payment') }}">
                                                @csrf
                                                <input type="hidden" name="scholarship_id" value="{{ $scholarshipApplication->id }}">
                                                <input type="hidden" name="student_id" value="{{ $scholarshipApplication->student->id }}">
                                                <input type="number" min="500" max="1000" name="amount" placeholder="Amount" required>
                                                <input type="text" name="card" placeholder="Card" required>
                                                <button type="submit" class="btn btn-info btn-sm">Payment</button>
                                                <a href="#" class="btn btn-primary btn-sm">Approved</a>
                                            </form>
                                        @endif
                                    @elseif($scholarshipApplication->status==2)
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
