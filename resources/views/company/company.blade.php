@extends('layouts.main')
@section('content')
<div class="site-section bg-light">
<div class="container">
	
	<div class="row">

		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<h3>{{ __('Companies') }}</h3>
				</div>
			</div>
		</div>

		@foreach($companies as $company)
		<div class="col-md-3">

			<div class="card" style="width: 16rem;">
				@if(empty($company->logo))

			<img width="100" src="{{asset('avatar/man.jpg')}}"class="card-img-top">

			@else
			<img width="100" src="{{asset('uploads/logo')}}/{{$company->logo}}"class="card-img-top">


			@endif

			
			<div class="card-body">
			<h5 class="card-title text-center">{{$company->cname}}</h5>
			
			<center><a href="{{route('company.index',[$company->id,$company->slug])}}" class="btn btn-primary">View Company</a></center>
  			</div>
		</div>
		<br>
	</div>


		@endforeach

	</div>
	<br><br>
			{{$companies->links()}}
</div>
</div>
@endsection