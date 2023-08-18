@extends('layouts.app')

@section('title')
    Student Cv
@endsection

@section('style')
    <style>
        .img-overlay img {
            width: 600px;
            height: auto;
        }
        @media print {
            html {
                font-size: 110%;
            }
        }
    </style>
@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card card-outline card-primary">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12 text-right">
                            <button class="pull-right btn btn-primary" onclick="getprint('prinarea')">Print</button><br><br>
                        </div>
                    </div>

                    <hr>

                    <div id="prinarea">

                        <div class="row">
                            <div class="col-2 text-center">
                                <img height="80px" src="{{ asset($studentDetail->image ?? '') }}" alt="">
                            </div>
                            <div class="col-8 text-center">
                                <h1><b>{{ $studentDetail->name }}</b></h1>
                                <p class="m-0">Mobile. {{ $studentDetail->phone }}</p>
                                <p class="m-0">E-mail: {{ $studentDetail->email }}</p>
                                <div class="bio-data-label">
                                    BIO-DATA
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="img-area">
                                   
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <table class="table table-bordered table-cv">
                                    <tr>
                                        <td  width="20%"><b>Carrier Objective</b></td>
                                        <td  colspan="4" width="80%">{{ $studentDetail->objective }}</td>
                                    </tr>
                                    <tr>
                                        <td width="20%">Name</td>
                                        <td colspan="4" width="80%">{{ $studentDetail->name }}</td>
                                    </tr>
                                    <tr>
                                        <td width="20%">Phone</td>
                                        <td colspan="4" width="80%">{{ $studentDetail->phone }}</td>
                                    </tr>
                                    <tr>
                                        <td width="20%">Email</td>
                                        <td colspan="4" width="80%">{{ $studentDetail->email }}</td>
                                    </tr>
                                    <tr>
                                        <td width="20%">Github</td>
                                        <td colspan="4" width="80%"><a href="{{ $studentDetail->github }}">{{ $studentDetail->github }}</a></td>
                                    </tr>
                                    <tr>
                                        <td width="20%">Linkedin</td>
                                        <td colspan="4" width="80%"><a href="{{ $studentDetail->linkedin }}">{{ $studentDetail->linkedin }}</a></td>
                                    </tr>
                                    <tr>
                                        <td width="20%">Address</td>
                                        <td colspan="4" width="80%">{{ $studentDetail->address }}</td>
                                    </tr>

                                    <tr>
                                        <th colspan="5"><b>Language Proficiency</b></th>
                                    </tr>
                                    <tr>
                                        <td width="20%">Name of Language</td>
                                        <td colspan="2">{{ $studentDetail->languages }}</td>
                                    </tr>

                                    <tr>
                                        <th colspan="5"><b>Skills</b></th>
                                    </tr>
                                    <tr>
                                        <td width="20%">Name of Skills</td>
                                        <td colspan="2">{{ $studentDetail->skills }}</td>
                                    </tr>
                                    
                                    <tr>
                                        <th colspan="5"><b>Projects</b></th>
                                    </tr>
                                    <tr>
                                        <td width="20%">Project Name</td>
                                        <td width="40%" colspan="2">Description</td>
                                        <td width="40%" colspan="2">Link</td>
                                    </tr>

                                    @foreach ($projects as $project)
                                    <tr>
                                        <td width="20%">{{ $project->name }}</td>
                                        <td width="40%" colspan="2">{{ $project->description }}</td>
                                        <td width="40%" colspan="2">{{ $project->link }}</td>
                                    </tr>
                                    @endforeach
                                    
                                    <tr>
                                        <th colspan="5"><b>Education Qualification</b></th>
                                    </tr>
                                    <tr>
                                        <td width="25%">School/Board/ <br> University</td>
                                        <td width="25%" class="text-center">Subject/Group</td>
                                        <td width="25%" class="text-center">Division/ <br> CGPA</td>
                                        <td width="25%" class="text-center">Out of Division/ <br> CGPA</td>
                                    </tr>
                                    @foreach ($educations as $education)
                                    <tr>
                                        <td width="25%">{{ $education->name }}</td>
                                        <td width="25%" class="text-center">{{ $education->subject }}</td>
                                        <td width="25%" class="text-center">{{ $education->cgpa }}</td>
                                        <td width="25%" class="text-center">{{ $education->tgpa }}</td>
                                    </tr>
                                    @endforeach
                                    
                                    <tr>
                                        <td colspan="5"><b>Remarks</b></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" class="text-center"><br><br></td>
                                    </tr>
                                </table>
                                <p><b>I acknowledge that all above information are true and correct. (আমি এই মর্মে অঙ্গীকার
                                        করছি যে উপরের তথ্য সূমহ সত্য ও সঠিক)</b></p>
                            </div>
    
                        </div>
                        <div class="row" style="margin-top: 20px">
                            <div class="col-3 text-left">
                                ____________________
                                <div class="signature"><b>Signature:</b></div>
                            </div>
                            <div class="col-7"></div>
                            <div class="col-2"><b>Date: {{ date('d/m/Y') }}</b></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

@section('script')

    <script>
        var APP_URL = '{!! url()->full()  !!}';
        function getprint(prinarea) {
            $('#heading_area').show();
            $('body').html($('#'+prinarea).html());
            window.print();
            window.location.replace(APP_URL)
        }

        $(function () {
            $('#table-payments').DataTable({
                "order": [[ 0, "desc" ]],
            });

        });
    </script>
@endsection
