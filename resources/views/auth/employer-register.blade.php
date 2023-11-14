@extends('layouts.main')

@section('content')

<div class="site-section bg-light">
     <div class="container">
     <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h3>{{ __('Employer Register') }}</h3></div>
                <div class="card-body">


       @if(Session::has('message'))
                 <div class="alert alert-success">
                    {{Session::get('message')}}
                </div>
            @endif

          
            <form method="POST" action="{{ route('emp.register') }} " >
                        @csrf

                        <input type="hidden" value="employer" name="user_type">

                        <div class="form-group row">    
                         <label for="name" class="col-md-4 col-form-label text-md-right">Company Name</label>
                            <div class="col-md-6">
                                <input id="name" type="text"  class="form-control{{ $errors->has('cname') ? ' is-invalid' : '' }}" name="cname" value="{{ old('cname') }}" required autofocus>

                                @if ($errors->has('cname'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('cname') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                    
                        <label for="email" class="col-md-4 col-form-label text-md-right">Email</label>

                            <div class="col-md-6">
                                <input id="email" type="text"  class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group row">

                        <label for="password" class="col-md-4 col-form-label text-md-right">Password</label>

                            <div class="col-md-6">
                                <input id="password" type="password"  class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" value="{{ old('password') }}" required autofocus>

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        <div class="form-group row">

                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right"> Confirm Password</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                            </div>
                        </div>




                      <div class="row form-group">
                        <div class="col-md-6  offset-md-4">
                          <input type="submit" value="Register as Employer" class="btn btn-primary  py-2 px-5">
                        </div>
                      </div>

  
            </form>
          </div>
     

    </div>
    </div>
    <div class="col-md-4 bg-white"><br>
              <h3 class="h5 text-black mb-3">More Info</h3>
              <p>Once you create an account a verification link will be sent to your email.</p>
              
            </div>

    </div>
    
   </div>

    
   </div>
@endsection
