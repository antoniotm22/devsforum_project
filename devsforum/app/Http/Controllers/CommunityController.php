<?php

namespace App\Http\Controllers;

use App\Http\Requests\UpdateCommunityRequest;
use App\Models\Community;
use App\Models\Post;
use Illuminate\Http\Request;
use App\Http\Requests\StoreCommunityRequest;
use Illuminate\Support\Facades\DB;

class CommunityController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $communities = Community::where('user_id', auth()->id())->get();

        return view('communities.index', compact('communities'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function indexAll()
    {
        $communities = Community::all();

        return view('communities.indexAll', compact('communities'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {


        return view('communities.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreCommunityRequest $request)
    {
        $community = Community::create($request->validated() + ['user_id' => auth()->id()]);
        $community->sluggable($request->slug);

        return redirect()->route('communities.show', $community);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $community = Community::where('slug', $slug)->firstOrFail();

        $query = $community->posts()->with('postVotes');

        if (request('sort', '') == 'popular') {
            $query->orderBy('votes', 'desc');
        } else {
            $query->latest('id');
        }

        $posts = $query->paginate(10);

        return view('communities.show', compact('community', 'posts'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Community $community)
    {
        //Si el user es diferente no puede editar
        if ($community->user_id != auth()->id()) {
            abort(403);
        }


        return view('communities.edit', compact('community'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateCommunityRequest $request, Community $community)
    {
        if ($community->user_id != auth()->id()) {
            abort(403);
        }
        $community->update($request->validated());


        return redirect()->route('communities.index')->with('message', 'Comunidad actualizada con exito');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Community $community)
    {
        if ($community->user_id != auth()->id()) {
            abort(403);
        }
        $community->delete();

        return redirect()->route('communities.index')->with('message', 'Successfully deleted');
    }
}
