@extends('layouts.app')

@section('style')
    <!-- DataTables -->
    <link rel="stylesheet" href="{{ asset('themes/backend/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
@endsection

@section('title')
    Students
@endsection

@section('content')
    @if(Session::has('message'))
        <div class="alert alert-success alert-dismissible">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            {{ Session::get('message') }}
        </div>
    @endif

    <div class="row">
        <div class="col-12">
            <div class="card card-outline card-primary">
                <div class="card-header">
                    {{-- <a href="{{ route('user.add') }}" class="btn btn-primary bg-gradient-primary">Add User</a> --}}
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="table-responsive-sm">
                    <table id="table" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>SL.</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Payment</th>
                            <th>Action</th>
                        </tr>
                        </thead>

                        <tbody>
                        @foreach($students as $index => $student)
                            <tr>
                                <td>{{ $index+1 }}</td>
                                <td>{{ $student->name }}</td>
                                <td>{{ $student->email }}</td>
                                <td>
                                    @if($student->studentPayment != null)
                                       Complete
                                    @else
                                       Incomplete
                                    @endif
                                </td>
                                <td>
                                    <a class="btn btn-info btn-sm" href="{{ route('admin.viewCV', ['id' => $student->id]) }}">View CV</a>
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
