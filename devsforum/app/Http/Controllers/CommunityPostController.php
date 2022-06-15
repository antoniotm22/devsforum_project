<?php

namespace App\Http\Controllers;

use App\Http\Requests\StorePostRequest;
use App\Models\Community;
use App\Models\Post;

use App\Notifications\PostReportNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Intervention\Image\Facades\Image;

class CommunityPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Community $community)
    {
        $post = $community->posts();
        //return view('communities.post', compact('post'));
    }


    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($postId)
    {
        $post = Post::with('comments.user', 'community')->findOrFail($postId);

        return view('posts.show', compact('post'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Community $community)
    {
        return view('posts.create', compact('community'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorePostRequest $request, Community $community)
    {
        $post = $community->posts()->create([
            'user_id' => auth()->id(),
            'title' => $request->title,
            'post_text' => $request->post_text ?? null,
            'post_url' => $request->post_url ?? null,
        ]);

        if ($request->hasFile('post_image')) {
            $image = $request->file('post_image')->getClientOriginalName();
            $request->file('post_image')
                ->storeAs('public/posts/' . $post->id, $image);
            $post->update(['post_image' => $image]);

            $file = Image::make(storage_path('app/public/posts/' . $post->id . '/' . $image));
            $file->resize(600, null, function ($constraint) {
                $constraint->aspectRatio();
            });
            $file->save(storage_path('app/public/posts/' . $post->id . '/thumbnail_' . $image));
        }

        return redirect()->route('communities.show', $community);
    }




}
