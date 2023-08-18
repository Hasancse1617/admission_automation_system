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
                            <th>Pay</th>
                            <th>Account</th>
                        </tr>
                        </thead>
                         @php
                             $total = 0;
                         @endphp
                        <tbody>
                        @foreach($payments as $index => $payment)
                            <tr>
                                <td>{{ $index+1 }}</td>
                                <td>{{ $payment->student->name }}</td>
                                <td>{{ $payment->student->email }}</td>
                                <td>
                                    {{ $payment->amount }} 
                                    @php
                                        if($payment->amount){
                                            $total += $payment->amount;
                                        }
                                    @endphp
                                </td>
                                <td>{{ $payment->card }}</td>
                            </tr>
                        @endforeach
                            <tr>
                                <td colspan="3" class="text-right">Total</td>
                                <td colspan="2">{{ $total }}</td>
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
