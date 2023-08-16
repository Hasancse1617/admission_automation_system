@extends('layouts.app')

@section('title')
    Edit Scholarship
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
                            <label class="col-sm-2 control-label">Title *</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Enter Title"
                                       name="title" value="{{ old('title', $scholarship->title) }}">

                                @error('title')
                                <span class="help-block">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row {{ $errors->has('image') ? 'has-error' :'' }}">
                            <label class="col-sm-2 control-label">Image *</label>
                            <div class="col-sm-10">
                                <input type="file" class="form-control" placeholder="Enter Image"
                                       name="image" value="{{ old('image') }}">

                                @error('image')
                                <span class="help-block">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row {{ $errors->has('password') ? 'has-error' :'' }}">
                            <label class="col-sm-2 control-label">Description *</label>

                            <div class="col-sm-10">
                                <textarea class="form-control" rows="5" placeholder="Enter Description"
                                       name="description">{{ old('description', $scholarship->description) }}</textarea>

                                @error('description')
                                <span class="help-block">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                    </div>
                    <!-- /.box-body -->
                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
            <!-- /.card -->
        </div>
        <!--/.col (left) -->
    </div>
@endsection

