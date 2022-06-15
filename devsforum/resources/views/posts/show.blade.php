<x-app-layout>
    <x-slot name="header">

    </x-slot>

    <div class="card">
        <div class="card-header text-secondary">{{ $post->title }}</div>

        <div class="card-body">
            @if (session('message'))
                <div class="alert alert-info">{{ session('message') }}</div>
            @endif

            @if ($post->post_url != '')
                <div class="mb-2 text-primary hover:text-emerald-700 ">
                    <a href="{{ $post->post_url }}" target="_blank">{{ $post->post_url }}</a>
                </div>
            @endif
                <!-- Mediante enlace simbólico -->
            @if ($post->post_image != '')
                <img src="{{ asset('storage/posts/' . $post->id . '/thumbnail_' . $post->post_image) }}" alt="{{$post->title}}"/>
                <br/><br/>
            @endif
                <b class="text-accent">{{ $post->post_text }}</b>

            @auth
                <hr/>
                <h3 class="text-accent">Comentarios</h3>
                @forelse ($post->comments as $comment)
                    <div class="card-bordered card-text  bg-gray-50">
                        <b class="text-primary">{{ $comment->user->name }}</b>
                    <br/>
                    {{ $comment->created_at->diffForHumans() }}
                    <p class="mt-2 text-accent">{{ $comment->comment_text }}</p>
                    </div>
                @empty
                        <b class="text-primary">Nadie ha hecho un comentario aún, ¡Puedes ser el primero!</b>
                @endforelse
                <hr/>
                <form method="POST" action="{{ route('posts.comments.store', $post) }}">
                    @csrf
                    <b class="text-primary">Crea un comentario:</b>
                    <br/>
                    <textarea class="form-control input input-bordered input-primary w-full max-w-xs" name="comment_text" rows="5" required></textarea>
                    <br/>
                    <button type="submit" class="btn btn-sm btn-primary">Crea comentario</button>
                </form>

                <hr/>
                @can('edit-post', $post)
                    <a href="{{ route('communities.posts.edit', [$post->community, $post]) }}"
                       class="btn btn-sm btn-primary">Edit post</a>
                @endcan

                @can('delete-post', $post)
                    <form action="{{ route('communities.posts.destroy', [$post->community, $post]) }}"
                          method="POST"
                          style="display: inline-block">
                        @csrf
                        @method('DELETE')
                        <button type="submit"
                                class="btn btn-sm btn-danger"
                                onclick="return confirm('Estas seguro?')">Borrar post
                        </button>
                    </form>
                @else

                @endcan
            @endauth
        </div>
    </div>
</x-app-layout>
