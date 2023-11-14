@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <h2>Your saved job.</h2>
            @if(Auth::user()->user_type=='seeker')
            @if(count($jobs)>0)
            @foreach($jobs as $job)
            <div class="card">
                <div class="card-header">{{$job->title}}</div>
                

                <div class="card-body">  
                    <small class="badge badge-success">{{$job->position}}
                </small>

                   <p> {{$job->description}}</p>
                </div>
                <div class="card-footer">
                    <span><a href="{{route('jobs.show',[$job->id,$job->slug])}}">Read</a></span>
                    <span class="float-right">Last date:{{$job->last_date}}</span>
                </div>

            </div>
            <br>
            @endforeach

            @else
            you have not  favourited any jobs to show.
            <a href="/">Find Jobs</a>
            @endif

            @else
            
            You're logged in 


            @endif
        </div>
    </div>
</div>
@endsection
