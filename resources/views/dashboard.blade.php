@extends('layouts.app')
@section('title','Dashboard')
@section('content')

@if(auth()->user()->role == 2)
    <h1 class="text-center">Welcome to ADMISSION AUTOMATION !</h1>
@else
    <div class="row">

        <div class="col-lg-3 col-6">

            <div class="small-box bg-dark">
                <div class="inner">
                    <h3>৳ </h3>
                    <p>TODAY'S TOTAL SALE</p>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-6">

            <div class="small-box bg-warning">
                <div class="inner">
                    <h3>৳ </h3>
                    <p>TODAY'S TOTAL CASH SALE</p>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-6">

            <div class="small-box bg-info">
                <div class="inner">
                    <h3>৳ </h3>
                    <p>TODAY'S TOTAL DUE</p>
                </div>
{{--                <div class="icon">--}}
{{--                    <i class="ion ion-bag"></i>--}}
{{--                </div>--}}
{{--                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>--}}
            </div>
        </div>
        <div class="col-lg-3 col-6">

            <div class="small-box bg-success">
                <div class="inner">
                    <h3>৳ </h3>
                    <p>TOTAL SALES</p>
                </div>
{{--                <div class="icon">--}}
{{--                    <i class="ion ion-bag"></i>--}}
{{--                </div>--}}
{{--                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>--}}
            </div>
        </div>
        <div class="col-lg-3 col-6">

            <div class="small-box bg-info">
                <div class="inner">
                    <h3>৳ </h3>
                    <p>TODAY'S TOTAL EXPENSE</p>
                </div>
{{--                <div class="icon">--}}
{{--                    <i class="ion ion-bag"></i>--}}
{{--                </div>--}}
{{--                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>--}}
            </div>
        </div>

        <div class="col-lg-3 col-6">

            <div class="small-box bg-success">
                <div class="inner">
                    <h3>৳ </h3>
                    <p>TOTAL EXPENSE</p>
                </div>
            </div>
        </div>



    </div>


@endif
@endsection
