@extends('layouts.app')

@section('style')
    <!-- DataTables -->
    <link rel="stylesheet" href="{{ asset('themes/backend/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
@endsection

@section('title')
    Admissions
@endsection

@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card card-outline card-primary">
                <div class="card-header">
                    {{-- <a href="{{ route('admission.add') }}" class="btn btn-primary bg-gradient-primary">Add Admission</a> --}}
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="table-responsive-sm">
                    <table id="table" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Institute Name</th>
                            <th>Action</th>
                        </tr>
                        </thead>

                        <tbody>
                        @foreach($admissions as $index => $admission)
                            <tr>
                                <td>{{ $index+1 }}</td>
                                <td>{{ $admission->title }}</td>
                                <td>{{ $admission->organization->name }}</td>
                                <td>
                                    <a class="btn btn-info btn-sm" href="{{ route('admission.single', ['id' => $admission->id]) }}">View</a>                                    
                                    @php
                                        $apply = \App\Models\AdmissionApply::where('student_id', Auth::user()->id)->first();
                                    @endphp
                                    @if($apply)
                                        <a class="btn btn-dark btn-sm" href="#">Applied</a>
                                        @if ($apply->status==1)
                                            <a class="btn btn-success btn-sm" href="#">Accepted</a>
                                        @elseif($apply->status==2)
                                            <a class="btn btn-success btn-sm" href="#">Rejected</a>
                                        @else
                                            <a class="btn btn-danger btn-sm" href="#">Pending</a>
                                        @endif
                                    @else
                                        <a class="btn btn-info btn-sm" href="{{ route('admission.apply', ['id' => $admission->id]) }}">Apply</a>
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
