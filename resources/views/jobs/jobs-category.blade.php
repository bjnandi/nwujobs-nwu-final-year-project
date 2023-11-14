@extends('layouts.main')
@section('content')
<style>

@media (min-width: 768px){

  .site-section {
    padding: 4em 0;
  }
}

</style>

<div class="site-section bg-light">
<div class="container">
    <div class="row">
    
        
            <div class="col-md-12" style="min-height: 500px;">
            <h2>{{$categoryName->name}}</h2>
        <div class="rounded border jobs-wrap">
            @if(count($jobs)>0)
                @foreach($jobs as $job)

              <a href="{{route('jobs.show',[$job->id,$job->slug])}}" class="job-item d-block d-md-flex align-items-center  border-bottom @if($job->type=='parttime') partime @elseif($job->type=='fulltime')fulltime @else freelance   @endif;">
                <div class="company-logo blank-logo text-center text-md-left pl-3">
                @if(!empty($job->company->logo))
                  <img src="{{asset('uploads/logo')}}/{{$job->company->logo}}" alt="Image" class="img-fluid mx-auto">
                  @else
              <img src="{{asset('avatar/man.jpg')}}" alt="Image" class="img-fluid mx-auto">
                  @endif
                </div>
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <h3>{{$job->position}}</h3>
                    <div class="d-block d-lg-flex">
                      <div class="mr-3"><span class="icon-suitcase mr-1"></span> {{$job->company->cname}}</div>
                      <div class="mr-3"><span class="icon-room mr-1"></span> {{str_limit($job->address,20)}}</div>
                      <div><span class="icon-money mr-1"></span>{{$job->salary}}</div>
                      <div>&nbsp;<span class="fa fa-clock-o mr-1"></span>{{$job->created_at->diffForHumans()}}</div>
                    </div>
                  </div>
                </div>
                <div class="job-category align-self-center">
                  @if($job->type=='Fulltime')
                  <div class="p-3">
                    <span class="text-info p-2 rounded border border-info">{{$job->type}}</span>
                  </div>
                  @elseif($job->type=='Parttime')
                  <div class="p-3">
                    <span class="text-danger p-2 rounded border border-danger">{{$job->type}}</span>
                  </div>
                  @else
                   <div class="p-3">
                    <span class="text-warning p-2 rounded border border-warning">{{$job->type}}</span>
                  </div>
                  @endif

                </div>  
              </a>

            @endforeach
            @else
            No jobs found
            @endif


            </div>
        </div>

    {{$jobs->appends(Illuminate\Support\Facades\Request::except('page'))->links()}}



    </div>
</div>
</div>
<br>

@endsection

