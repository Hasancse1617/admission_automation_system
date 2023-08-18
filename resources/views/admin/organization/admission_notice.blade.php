@extends('layouts.app')

@section('style')
    <!-- DataTables -->
    <link rel="stylesheet" href="{{ asset('themes/backend/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
@endsection

@section('title')
    Admission List
@endsection

@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card card-outline card-primary">
                <div class="card-header">
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="table-responsive-sm">
                    <table id="table" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Total Application</th>
                            <th>Action</th>
                        </tr>
                        </thead>

                        <tbody>
                        @foreach($admissions as $index => $admission)
                            <tr>
                                <td>{{ $index+1 }}</td>
                                <td>{{ $admission->title }}</td>
                                <td>
                                    @php
                                        $application = \App\Models\AdmissionApply::where('admission_id', $admission->id)->get()->count();
                                    @endphp
                                    @if($application){{ $application }}@endif
                                </td>
                                <td>
                                    <a class="btn btn-info btn-sm" href="{{ route('admin.admission.view', ['id'=> $admission->id]) }}">View Notice</a>
                                    <a class="btn btn-info btn-sm" href="{{ route('admin.admission.application', ['id'=> $admission->id]) }}">View All Application</a>
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
