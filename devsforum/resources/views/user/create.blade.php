<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Crear producto') }}
        </h2>
    </x-slot>


    <div class="row">
        <div class="col-md-12">



            <div class="card card-default">

                <div class="card-body">
                    <form method="POST" action="{{ route('user.store') }}"  role="form" enctype="multipart/form-data">
                        @csrf

                        <div>
                            @include('user.form')
                        </div>


                    </form>
                </div>
            </div>
        </div>
    </div>

</x-app-layout>
