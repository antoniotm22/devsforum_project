<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostCommentController extends Controller
{
    //Controlador para poder guardar el comentario en el post deseado.
    public function store(Request $request, Post $post)
    {
        $post->load('community');

        $post->comments()->create([
            'user_id' => auth()->id(),
            'comment_text' => $request->comment_text
        ]);

        return redirect()->route('communities.posts.show', [$post->id]);
    }


}
