<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    //
    public function index(){
        $title = "Welcome to KEVBLOG!";
        return view('pages.index', compact('title'));
    }
    public function about(){
        $title = "About KEVBLOG!";
        return view('pages.about')->with('title', $title);
    }
    public function skills(){
        $data = array(
            'title' => 'My Skills!',
            'skills' => ['Advance knowledge in HTML', 'Advance knowledge in CSS', 'Advance knowledge in PHP',]
        );
        return view('pages.skills')->with($data);
    }
}
