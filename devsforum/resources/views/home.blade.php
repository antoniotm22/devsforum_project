<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('') }}
        </h2>
    </x-slot>


    <div class="pt-6 pb-12 bg-white-200">
        <div id="card" class="">
            <h2 class="text-center font-sans text-blue-900  uppercase text-4xl xl:text-5xl">Post Populares</h2>

            <div class="container w-100 lg:w-4/5 mx-auto flex flex-col">

                @foreach ($posts as $post)
                    <div  class="flex flex-col md:flex-row overflow-hidden
                                        bg-white rounded-lg shadow-xl  mt-4 w-100 mx-2 border-double border-4 border-pink-600">

                        <div class="w-full py-4 px-6 text-gray-800 flex flex-col justify-between">
                            <h3 class="font-semibold text-lg leading-tight truncate text-accent"> <a href="{{ route('communities.posts.show', [$post->id]) }}">
                                    {{ $post->title }}
                                </a>
                            </h3>
                            <p class="mt-2">
                                {{ \Illuminate\Support\Str::words($post->post_text, 10)}}
                            </p>
                            <p class="text-sm text-gray-700 uppercase tracking-wide font-semibold mt-2">
                                &bull; {{$post->created_at->diffForHumans()  }}
                            </p>
                            <p>


                            </p>
                        </div>
                    </div><!--/ card-->
                @endforeach
            </div><!--/ flex-->
        </div>
    </div>


</x-app-layout>


