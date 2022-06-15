<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-pink-600 leading-tight">
            {{ __('Vista Administrador') }}
        </h2>
    </x-slot>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: end; align-items: end;">



                            <div class="float-right">

                            </div>
                        </div>
                    </br>
                    </div>
                    @if ($message = Session::get('success'))
                        <div class="bg-teal-100 border-t-4 border-teal-500 rounded-b text-teal-900 px-4 py-3 shadow-md" role="alert">
                            <div class="flex">
                                <div class="py-1"><svg class="fill-current h-6 w-6 text-teal-500 mr-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M2.93 17.07A10 10 0 1 1 17.07 2.93 10 10 0 0 1 2.93 17.07zm12.73-1.41A8 8 0 1 0 4.34 4.34a8 8 0 0 0 11.32 11.32zM9 11V9h2v6H9v-4zm0-6h2v2H9V5z"/></svg></div>
                                <div>
                                    <p class="font-bold">{{ $message }}</p>

                                </div>
                            </div>
                        </div>

                    @endif

                    <div class="flex flex-col">
                        <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
                            <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
                                <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
                                    <table class="min-w-full divide-y divide-gray-200">
                                        <thead class="bg-gray-50">
                                        <tr>
                                            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-pink-600 uppercase tracking-wider">Id</th>
                                            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-pink-600 uppercase tracking-wider">Nombre</th>
                                            <th scope="col" class="px-6 py-3 text-left text-xs font-medium  text-pink-600 uppercase tracking-wider">Email</th>
                                            <th scope="col" class="px-6 py-3 text-left text-xs font-medium  text-pink-600 uppercase tracking-wider">Admin</th>

                                            <th scope="col" class="relative px-6 py-3">
                                                <span class="sr-only">Edit</span>
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody class="bg-white divide-y divide-pink-600">
                                        @foreach ($users as $user)
                                            <tr>
                                                <td>{{ $user->id }}</td>

                                                <td>{{ $user->name }}</td>
                                                <td>{{ $user->email }}</td>

                                                <td>{{ $user->admin }}</td>


                                                <td>
                                                    <form action="{{ route('user.destroy',$user->id) }}" method="POST">
                                                        <a class=" text-indigo-600 hover:text-indigo-900" href="{{ route('user.show',$user->id) }}"><i class="fa fa-fw fa-eye"></i> Ver</a>
                                                        <a class="text-green-600 hover:text-gray-900" href="{{ route('user.edit',$user->id) }}"><i class="fa fa-fw fa-edit"></i> Edit</a>
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="text-red-700 hover:text-red-900"><i class="fa fa-fw fa-trash"></i> Delete</button>
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</x-app-layout>
