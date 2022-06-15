<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Detalles Usuario') }}
        </h2>
    </x-slot>
    <section class="text-gray-700 body-font overflow-hidden bg-white">
        <div class="container px-5 py-24 mx-auto">

            <div class="float-right">
                <a class="btn btn-primary" href="{{ route('user.index') }}"> Atras</a>
            </div>

            <div class="lg:w-4/5 mx-auto flex flex-wrap">

                <div class="lg:w-1/2 w-full lg:pl-10 lg:py-6 mt-6 lg:mt-0">
                    <h2 class="text-sm title-font text-gray-500 tracking-widest">Usuario {{$user->name}}</h2>
                    <h1 class="text-gray-900 text-3xl title-font font-medium mb-1">{{$user->name}}</h1>

                    <p class="leading-relaxed">Email: {{$user->email}}</p>
                    <div class="flex mt-6 items-center pb-5 border-b-2 border-gray-200 mb-5">

                        <div class="flex ml-6 items-center">

                            <div class="relative">

                                <span class="absolute right-0 top-0 h-full w-10 text-center text-gray-600 pointer-events-none flex items-center justify-center">

              </span>
                            </div>
                        </div>
                    </div>
                    <div class="flex">



                    </div>
                    <div class="flex">

                        <span class="title-font font-medium text-2xl text-gray-900">Administrador: {{$user->admin}}</span>

                    </div>
                </div>
            </div>
        </div>
    </section>

</x-app-layout>

