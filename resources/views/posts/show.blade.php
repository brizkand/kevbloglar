@extends('layouts.app')
@section('content')
    <a href="/posts" class= 'btn btn-primary'>Go Back</a>
    <br><br>
    <div class="card">
        <div class="row">
            <div class="col-sm-4">
                <img style="width:100%" src="/storage/cover_images/{{$post->cover_image}}" alt="Post Image">
            </div>
            <div class="card-body">
                <div class="col-sm-8">
                    <h1 class="card-title">{{$post->title}}</h1>
                    {!!$post->body!!}
                    <hr>
                    <small>Written on {{$post->created_at}} by {{$post->user->name}}</small>
                    <hr>
                    @if(!Auth::guest())
                        @if(Auth::user()->id == $post->user_id)
                            <a href="/posts/{{$post->id}}/edit" class='btn btn-primary'>Edit</a>
                            {!!Form::open(['action' => ['PostsController@destroy', $post->id], 'method' => 'POST', 'class'=>'btn float-right'])!!}
                                {{Form::hidden('_method', 'DELETE')}}
                                {{Form::submit('Delete', ['class'=> 'btn btn-danger'])}}
                            {!!Form::close()!!}
                        @endif
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection