@extends('layouts.app')
@section('content')
    <div class="container">
    <div class="jumbotron">
        <h1 class="display-4 text-center"><b>All Blogs</b></h1>
    </div>
    @if(count($posts) > 0)
        @foreach($posts as $post)
        <div class='container'>
            <div class='card'>
                <div class='row'>
                    <div class="col-sm-4">
                        <img style="width:100%" src="/storage/cover_images/{{$post->cover_image}}" alt="Post Image">
                    </div>
                    <div class='card-body'>
                        <div class="col-sm-8">
                            <h3 class="card-title"><a href="/posts/{{$post->id}}">{{$post->title}}</a></h3>
                            <small>Written on {{$post->created_at}}<br> by {{$post->user->name}}</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
        <br>
        {{ $posts->links() }} 
    @else
        <p>No posts found</p>
    @endif
    </div>
@endsection