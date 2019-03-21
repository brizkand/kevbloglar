@extends('layouts.app')

@section('content')
    <div class='jumbotron text-center'>
        <h1 class="display-4"><b>{{$title}}</b></h1>
        <p class="text-info"><strong>Post anything you want here, You are free to share your story.</strong></p>
        <p class="text-warning"><strong>Register first to make your own blogs</strong></p>
        <p>
            <a class="btn btn-primary btn-lg" href='/login' role="button">Login</a>
            <a class="btn btn-success btn-lg" href='/login' role="button">Register</a>
        </p>
    </div>
    <div id="app" class='container-fluid'>
            <div id="demo" class="carousel slide" data-ride="carousel" data-interval="2500">
            <ul class="carousel-indicators">
              <li data-target="#demo" data-slide-to="0" class="active"></li>
              <li data-target="#demo" data-slide-to="1"></li>
              <li data-target="#demo" data-slide-to="2"></li>
            </ul>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="/storage/cover_images/blog3.png" alt="Satellite" width="1100" height="500">
                <div class="carousel-caption">
                  <h1 class='text-success display-4'><b>Hello Bloggers</b></h1>
                  <p class='text-white bg-dark rounded'><strong>Please click register now to start blogging
                  </strong></p>
                </div>   
              </div>
              <div class="carousel-item">
                <img src="/storage/cover_images/blog2.png" alt="Elevator" width="1100" height="500">
                <div class="carousel-caption">
                  <h1 class='text-success display-4'><b>About this blog?</b></h1>
                  <p class='text-white bg-dark rounded'><strong>This is free web app developed by K.H.</strong></p>
                </div>   
              </div>
              <div class="carousel-item">
                <img src="/storage/cover_images/blog1.png" alt="Building" width="1100" height="500">
                <div class="carousel-caption">
                  <h1 class='text-success display-4'><b>Want your own blog?</b></h1>
                  <p class='text-white bg-dark rounded'><strong>Feel free to contact me in brizkand27@gmail.com</strong></p>
                </div>   
              </div>
            </div>
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
              <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
              <span class="carousel-control-next-icon"></span>
            </a>
        </div>
 @endsection
