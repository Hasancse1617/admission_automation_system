@extends('layouts.app')

@section('title')
    Admission Details
@endsection

@section('content')
    <div class="row">
        <!-- left column -->
        <div class="col-md-12">
            <!-- jquery validation -->
            <div class="card card-outline card-primary">
                <div class="card-header">
                    <h3 class="card-title">Admission Information</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                <form class="form-horizontal" method="POST" action="{{ route('admission.edit', ['id' => $admission->id]) }}" enctype="multipart/form-data">
                    @csrf

                    <div class="card-body">
                        <div class="form-group row {{ $errors->has('title') ? 'has-error' :'' }}">
                            <label class="col-sm-2 control-label"></label>
                            <div class="col-sm-10">
                                {{ $admission->title }}
                            </div>
                        </div>

                        <div class="form-group row {{ $errors->has('image') ? 'has-error' :'' }}">
                            <label class="col-sm-2 control-label"></label>
                            <div class="col-sm-10">
                                <img src="{{ asset($admission->image) }}"/>
                            </div>
                        </div>

                        <div class="form-group row {{ $errors->has('password') ? 'has-error' :'' }}">
                            <label class="col-sm-2 control-label"></label>

                            <div class="col-sm-10">
                                {{ $admission->description }}
                            </div>
                        </div>
                    </div>
                    <!-- /.box-body -->
                    <div class="card-footer">
                        <a href="{{ route("admission.list") }}" class="btn btn-primary">Back</a>
                    </div>
                </form>
            </div>
            <!-- /.card -->
        </div>
        <!--/.col (left) -->
    </div>
@endsection