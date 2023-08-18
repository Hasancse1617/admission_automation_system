@extends('layouts.app')

@section('title')
    Details Scholarship 
@endsection

@section('content')
    <div class="row">
        <!-- left column -->
        <div class="col-md-12">
            <!-- jquery validation -->
            <div class="card card-outline card-primary">
                <div class="card-header">
                    <h3 class="card-title">Scholarship Information</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                <form class="form-horizontal" method="POST" action="{{ route('scholarship.edit', ['id' => $scholarship->id]) }}" enctype="multipart/form-data">
                    @csrf

                    <div class="card-body">
                        <div class="form-group row {{ $errors->has('title') ? 'has-error' :'' }}">
                            <label class="col-sm-2 control-label"></label>
                            <div class="col-sm-10">
                                {{ $scholarship->title }}
                            </div>
                        </div>

                        <div class="form-group row {{ $errors->has('image') ? 'has-error' :'' }}">
                            <label class="col-sm-2 control-label"></label>
                            <div class="col-sm-10">
                                <img src="{{ asset($scholarship->image) }}"/>
                            </div>
                        </div>

                        <div class="form-group row {{ $errors->has('password') ? 'has-error' :'' }}">
                            <label class="col-sm-2 control-label"></label>

                            <div class="col-sm-10">
                                {{ $scholarship->description }}
                            </div>
                        </div>
                    </div>
                    <!-- /.box-body -->
                    <div class="card-footer">
                        <a href="{{ route("scholarship.list") }}" class="btn btn-primary">Back</a>
                    </div>
                </form>
            </div>
            <!-- /.card -->
        </div>
        <!--/.col (left) -->
    </div>
@endsection