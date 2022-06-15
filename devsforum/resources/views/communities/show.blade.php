<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">

        </h2>
    </x-slot>

    <div class="card">
        <div class="card-header ">
            <div class="row ">
                <div class="col-8 justify-center">
                    <h1 class="text-primary ">{{ $community->name }}</h1>
                </div>
                <div class="col-4 text-right">
                    <a href="{{ route('communities.show', $community) }}"
                       @if (request('sort', '') == '') style="font-size: 20px" @endif>Nuevo</a>

                    <br/>
                    <a href="{{ route('communities.show', $community) }}?sort=popular"
                       @if (request('sort', '') == 'popular') style="font-size: 20px" @endif>Popular</a>
                </div>
            </div>
        </div>

        <div class="card-body">


            <a href="{{ route('communities.posts.create', $community) }}"
               class="btn btn-primary">Crea una publicación</a>

            <br/><br/>
            @foreach ($posts as $post)

                    <div class="row">

                        <div class="col-11">
                            <a href="{{ route('communities.posts.show', [$post->id]) }}">
                                <h2 class="text-primary">{{ $post->title }}</h2>
                            </a>
                            <p class="text-secondary">{{ $post->created_at->diffForHumans() }}</p>
                            <p class="text-accent">{{ \Illuminate\Support\Str::words($post->post_text, 10) }}</p>
                        </div>
                    </div>

                <hr/>

            @endforeach

            {{ $posts->links() }}
        </div>
    </div>

</x-app-layout>
