@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-3">
            @if(empty(Auth::user()->profile->avatar))
            <img src="{{asset('avatar/man.jpg')}}" width="100" style="width: 100%;">
            @else
            <img src="{{asset('uploads/avatar')}}/{{Auth::user()->profile->avatar}}" width="100" style="width: 100%;">

            @endif
            <br><br>

            <form action="{{route('avatar')}}" method="POST" enctype="multipart/form-data">@csrf

            <div class="card">
                <div class="card-header">Update profile picture</div>
                <div class="card-body">
                    <input type="file" class="form-control" name="avatar">
                    <br>
                    <button class="btn btn-success float-right" type="submit">Update</button>
                    @if($errors->has('avatar'))
                            <div class="error" style="color: red;">{{$errors->first('avatar')}}</div>
                        @endif

                </div>
            </div>
        </form>


        </div>

        <div class="col-md-5">
            @if(Session::has('message'))
                 <div class="alert alert-success">
                    {{Session::get('message')}}
                </div>
            @endif
             <div class="card">
                <div class="card-header">Update Your Profile</div>


                <form action="{{route('profile.create')}}" method="POST">@csrf


                <div class="card-body">
                    <div class="form-group">
                        <label for="">Address</label>
                        <input type="text" class="form-control" name="address" value="{{Auth::user()->profile->address}}">
                        @if($errors->has('address'))
                            <div class="error" style="color: red;">{{$errors->first('address')}}</div>
                        @endif

                    </div>


                    <div class="form-group">
                        <label for="">Phone number</label>
                        <input type="text" class="form-control" name="phone_number" value="{{Auth::user()->profile->phone_number}}">
                        @if($errors->has('phone_number'))
                            <div class="error" style="color: red;">{{$errors->first('phone_number')}}</div>
                        @endif
                    </div>


                    <div class="form-group">
                        <label for="">Experience</label>
                        <textarea name="experience" class="form-control">{{Auth::user()->profile->experience}}</textarea>
                        @if($errors->has('experience'))
                            <div class="error" style="color: red;">{{$errors->first('experience')}}</div>
                        @endif
                    </div>


                    <div class="form-group">
                        <label for="">Bio</label>
                        <textarea name="bio" class="form-control">{{Auth::user()->profile->bio}}</textarea>
                        @if($errors->has('bio'))
                            <div class="error" style="color: red;">{{$errors->first('bio')}}</div>
                        @endif
                    </div>

                    <div class="form-group">
                        <button class="btn btn-success" type="submit">Update</button>
                    </div>

                </div>
            </div>

            

        </div>


</form>
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">About you</div>
                <div class="card-body">
                <p>Name:{{Auth::user()->name}}</p>
                <p>Email:{{Auth::user()->email}}</p>
                <p>Address:{{Auth::user()->profile->address}}</p>

                <p>Phone:{{Auth::user()->profile->phone_number}}</p>
                <p>Gender:{{Auth::user()->profile->gender}}</p>
                <p>Experience:{{Auth::user()->profile->experience}}</p>
                <p>Bio:{{Auth::user()->profile->bio}}</p>
                <p>Member On:{{date('F d Y',strtotime(Auth::user()->created_at))}}</p>

                @if(!empty(Auth::user()->profile->cover_letter))
                    <p><a href="{{Storage::url(Auth::user()->profile->cover_letter)}}">Cover letter</a></p>
                @else
                    <p>Please upload cover letter</p>
                @endif


                @if(!empty(Auth::user()->profile->resume))
                    <p><a href="{{Storage::url(Auth::user()->profile->resume)}}">Resume</a></p>
                @else
                    <p>Please upload resume</p>
                @endif



                </div>
            </div>
        <br>
        <form action="{{route('cover.letter')}}" method="POST" enctype="multipart/form-data">@csrf
            <div class="card">
                <div class="card-header">Update coverletter</div>
                <div class="card-body">
                    <input type="file" class="form-control" name="cover_letter"><br>
                    <button class="btn btn-success float-right" type="submit">Update</button>
                    @if($errors->has('cover_letter'))
                            <div class="error" style="color: red;">{{$errors->first('cover_letter')}}</div>
                        @endif
                </div>
            </div>
        </form>

            <br>
            <form action="{{route('resume')}}" method="POST" enctype="multipart/form-data">@csrf

            <div class="card">
                <div class="card-header">Update resume</div>
                <div class="card-body">
                    <input type="file" class="form-control" name="resume">
                    <br>
                    <button class="btn btn-success float-right" type="submit">Update</button>
                     @if($errors->has('resume'))
                            <div class="error" style="color: red;">{{$errors->first('resume')}}</div>
                        @endif
                </div>
            </div>
        </form>


        </div>

    </div>
</div>
@endsection

