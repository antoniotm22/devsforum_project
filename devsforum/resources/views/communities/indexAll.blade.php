<x-app-layout>
    <x-slot name="header">

    </x-slot>

    <div class="pt-6 pb-12 bg-white-200">
        <div id="" class="">
            <h2 class="text-center font-sans text-secondary uppercase text-4xl xl:text-5xl">COMUNIDADES</h2>
            @if (session('message'))
                <div class="alert alert-info">{{ session('message') }}</div>
                <br/>
            @endif

            <div class="container w-100 lg:w-4/5 mx-auto flex flex-col">

                @foreach ($communities as $community)
                    <div  class="flex flex-col md:flex-row overflow-hidden
                                        bg-white rounded-lg shadow-xl  mt-4 w-100 mx-2 border-solid border-2 border-pink-600">

                        <div class="w-full py-4 px-6 text-gray-800 flex flex-col justify-between">
                            <h3 class="font-semibold text-lg leading-tight truncate"> <a href="{{ route('communities.show', $community) }}">{{ $community->name }}</a>
                            </h3>
                            <p class="mt-2">
                                {{ \Illuminate\Support\Str::words($community->description, 10)}}
                            </p>
                            <p class="text-sm text-gray-700 uppercase tracking-wide font-semibold mt-2">
                                &bull; {{$community->created_at->diffForHumans()  }}
                            </p>
                        </div>
                    </div><!--/ card-->
                @endforeach
            </div><!--/ flex-->
        </div>
    </div>

</x-app-layout>
