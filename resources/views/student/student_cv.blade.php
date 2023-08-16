<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Student CV | {{ config('app.name') }}</title>
{{--    <link rel="icon" type="image/x-icon" href="{{ asset('img/favicon.ico') }}">--}}
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Toastr -->
    <link rel="stylesheet" href="{{ asset('themes/backend/plugins/toastr/toastr.min.css') }}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ asset('themes/backend/plugins/fontawesome-free/css/all.min.css') }}">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="{{ asset('themes/backend/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('themes/backend/dist/css/adminlte.min.css') }}">
    <style>
        .login-box, .register-box {
            width: 50%;
        }
        .card-primary.card-outline {
            border-top: 3px solid #009f4b;
        }
        .btn-primary {
            background-color: #009f4b;
            border-color: #009f4b;
        }
        .btn-primary:hover{
            background-color: #009f4b;
            border-color: #009f4b;
        }
        .icheck-primary>input:first-child:checked+input[type=hidden]+label::before, .icheck-primary>input:first-child:checked+label::before {
            background-color: #009f4b;
            border-color: #009f4b;
        }
        .icheck-primary>input:first-child:not(:checked):not(:disabled):hover+input[type=hidden]+label::before, .icheck-primary>input:first-child:not(:checked):not(:disabled):hover+label::before {
            border-color: #009f4b;
        }
        .btn-primary:not(:disabled):not(.disabled).active, .btn-primary:not(:disabled):not(.disabled):active, .show>.btn-primary.dropdown-toggle {
            background-color: #009f4b;
            border-color: #009f4b;
        }
        .btn-primary {
            background-color: #f2682b;
            border-color: #f2682b;
        }
        .card-primary.card-outline {
            border-top: 3px solid #f2682b;
        }
        .btn-primary:hover {
            background-color: #fd7300;
            border-color: #fd7300;
        }
        .icheck-primary>input:first-child:checked+input[type=hidden]+label::before, .icheck-primary>input:first-child:checked+label::before {
            background-color: #f2682b;
            border-color: #f2682b;
        }
        .icheck-primary>input:first-child:checked+input[type=hidden]+label::before, .icheck-primary>input:first-child:checked+label::before {
            background-color: #f2682b;
            border-color: #f2682b;
        }
        .btn-primary {
            background-color: #f2682b;
            border-color: #f2682b;
        }
        .btn-primary {
            color: #fff;
            background-color: #f2682b;
            border-color: #f2682b;
            box-shadow: none;
        }
        element.style {
        }
        .btn-primary:not(:disabled):not(.disabled).active:focus, .btn-primary:not(:disabled):not(.disabled):active:focus, .show>.btn-primary.dropdown-toggle:focus {
            box-shadow: 0 0 0 0 rgb(38 143 255 / 50%);
        }
        .btn-primary:not(:disabled):not(.disabled).active, .btn-primary:not(:disabled):not(.disabled):active, .show>.btn-primary.dropdown-toggle {
            background-color: #f2682b;
            border-color: #f2682b;
        }

    </style>
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <!-- /.login-logo -->
    <div class="card card-outline card-primary">
        <div class="card-header text-center">
{{--            <a href="{{ route('login') }}">--}}
{{--                <img height="43px" src="{{ asset('img/logo.png') }}" alt="">--}}
{{--            </a>--}}
            <h2>STUDENT CV GENERATE</h2>
        </div>
        <div class="card-body">
            {{-- <p class="login-box-msg">Sign in to start your session</p> --}}
            @if($errors->any())
                <ul>
                    @foreach ($errors->all() as $error)
                        <li class="text-danger">{{ $error }}</li>
                    @endforeach
                </ul>
            @endif
            <form action="{{ route('student_cv') }}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="input-group mb-3">
                    <input type="text" name="email" class="form-control" placeholder="Email" value="{{ old('email', Session::get('student_email')) }}" readonly>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            {{-- <span class="fas fa-envelope"></span> --}}
                        </div>
                    </div>
                </div>

                <div class="input-group mb-3">
                    <input type="text" name="title" class="form-control" placeholder="Student Title" value="{{ old('title') }}" >
                    <div class="input-group-append">
                        <div class="input-group-text">
                            {{-- <span class="fas fa-envelope"></span> --}}
                        </div>
                    </div>
                </div>

                <div class="input-group mb-3">
                    <input type="text" name="phone" class="form-control" placeholder="Phone" value="{{ old('phone') }}">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            {{-- <span class="fas fa-envelope"></span> --}}
                        </div>
                    </div>
                </div>

                <div class="input-group mb-3">
                    <textarea name="objective" class="form-control" placeholder="Career Objective" placeholder="Career Objective">{{ old('objective') }}</textarea>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            {{-- <span class="fas fa-envelope"></span> --}}
                        </div>
                    </div>
                </div>

                <div class="input-group mb-3">
                    <input type="file" name="photo" class="form-control">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            {{-- <span class="fas fa-lock"></span> --}}
                        </div>
                    </div>
                </div>

                <div class="input-group mb-3">
                    <input type="text" name="github" class="form-control" placeholder="Github Link" value="{{ old('github') }}">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            {{-- <span class="fas fa-envelope"></span> --}}
                        </div>
                    </div>
                </div>

                <div class="input-group mb-3">
                    <input type="text" name="linkedin" class="form-control" placeholder="Linkedin Link" value="{{ old('linkedin') }}">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            {{-- <span class="fas fa-envelope"></span> --}}
                        </div>
                    </div>
                </div>

                <div class="input-group mb-3">
                    <input type="text" name="skills" class="form-control" placeholder="Skills (seperate with comma)" value="{{ old('skills') }}">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            {{-- <span class="fas fa-envelope"></span> --}}
                        </div>
                    </div>
                </div>

                <div class="input-group mb-3">
                    <input type="text" name="address" class="form-control" placeholder="Address" value="{{ old('address') }}">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            {{-- <span class="fas fa-envelope"></span> --}}
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <b>Education Institution(1)</b>
                    </div>
                    <div class="col-6">
                        <div class="input-group mb-3">
                            <input type="text" name="institute1_name" class="form-control" placeholder="Institute Name" value="{{ old('institute1_name') }}">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    {{-- <span class="fas fa-envelope"></span> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="input-group mb-3">
                            <input type="text" name="subject1" class="form-control" placeholder="Subject Name" value="{{ old('subject1') }}">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    {{-- <span class="fas fa-envelope"></span> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="input-group mb-3">
                            <input type="text" name="cgpa1" class="form-control" placeholder="cgpa" value="{{ old('cgpa1') }}">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    {{-- <span class="fas fa-envelope"></span> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="input-group mb-3">
                            <input type="text" name="total_cgpa1" class="form-control" placeholder="Total cgpa" value="{{ old('total_cgpa1') }}">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    {{-- <span class="fas fa-envelope"></span> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <b>Education Institution(2)</b>
                    </div>
                    <div class="col-6">
                        <div class="input-group mb-3">
                            <input type="text" name="institute2_name" class="form-control" placeholder="Institute Name" value="{{ old('institute2_name') }}">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    {{-- <span class="fas fa-envelope"></span> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="input-group mb-3">
                            <input type="text" name="subject2" class="form-control" placeholder="Subject Name" value="{{ old('subject1') }}">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    {{-- <span class="fas fa-envelope"></span> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="input-group mb-3">
                            <input type="text" name="cgpa2" class="form-control" placeholder="cgpa" value="{{ old('cgpa2') }}">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    {{-- <span class="fas fa-envelope"></span> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="input-group mb-3">
                            <input type="text" name="total_cgpa2" class="form-control" placeholder="Total cgpa" value="{{ old('total_cgpa2') }}">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    {{-- <span class="fas fa-envelope"></span> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <b>Project (1)</b>
                    </div>
                    <div class="col-6">
                        <div class="input-group mb-3">
                            <input type="text" name="project1_name" class="form-control" placeholder="Project Name" value="{{ old('project1_name') }}">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    {{-- <span class="fas fa-envelope"></span> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="input-group mb-3">
                            <input type="text" name="project1_link" class="form-control" placeholder="Project Link" value="{{ old('project1_link') }}">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    {{-- <span class="fas fa-envelope"></span> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="input-group mb-3">
                            <textarea type="text" name="project1_description" class="form-control" placeholder="Project short Description">{{ old('project1_description') }}</textarea>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    {{-- <span class="fas fa-envelope"></span> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <b>Project (2)</b>
                    </div>
                    <div class="col-6">
                        <div class="input-group mb-3">
                            <input type="text" name="project2_name" class="form-control" placeholder="Project Name" value="{{ old('project2_name') }}">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    {{-- <span class="fas fa-envelope"></span> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="input-group mb-3">
                            <input type="text" name="project2_link" class="form-control" placeholder="Project Link" value="{{ old('project2_link') }}">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    {{-- <span class="fas fa-envelope"></span> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="input-group mb-3">
                            <textarea type="text" name="project2_description" class="form-control" placeholder="Project short Description">{{ old('project2_description') }}</textarea>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    {{-- <span class="fas fa-envelope"></span> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="input-group mb-3">
                    <input type="text" name="languages" class="form-control" placeholder="Languages(seperate with comma)" value="{{ old('languages') }}">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            {{-- <span class="fas fa-envelope"></span> --}}
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-8">
                        {{-- <div class="icheck-primary">
                            <input name="remember" type="checkbox" id="remember">
                            <label for="remember">
                                Remember Me
                            </label>
                        </div> --}}
                    </div>
                    <!-- /.col -->
                    <div class="col-4">
                        <button type="submit" class="btn btn-primary btn-flat btn-block">Generate CV</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="{{ asset('themes/backend/plugins/jquery/jquery.min.js') }}"></script>
<!-- Bootstrap 4 -->
<script src="{{ asset('themes/backend/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
<!-- Toastr -->
<script src="{{ asset('themes/backend/plugins/toastr/toastr.min.js') }}"></script>
<script>
    $(function () {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        var message = '{{ session('message') }}';
        var error = '{{ session('error') }}';

        if (!window.performance || window.performance.navigation.type != window.performance.navigation.TYPE_BACK_FORWARD) {
            if (message != '')
                $(document).Toasts('create', {
                    icon: 'fas fa-envelope fa-lg',
                    class: 'bg-success',
                    title: 'Success',
                    autohide: true,
                    delay: 3000,
                    body: message
                })

            if (error != '')
                $(document).Toasts('create', {
                    icon: 'fas fa-envelope fa-lg',
                    class: 'bg-danger',
                    title: 'Error',
                    autohide: true,
                    delay: 3000,
                    body: error
                })
        }
    });

</script>
<!-- AdminLTE App -->
<script src="{{ asset('themes/backend/dist/js/adminlte.min.js') }}"></script>
</body>
</html>
