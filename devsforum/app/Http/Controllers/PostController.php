<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    //Mostrar post para el home.


    public function index()
    {
        $posts = Post::with('community')->withCount(['postVotes' => function($query) {
            $query->where('post_votes.created_at', '>', now()->subDays(7))
                ->where('vote', 1);
        }])->orderBy('post_votes_count', 'desc')->take(10)->get();

        return view('home', compact('posts'));
    }
}
