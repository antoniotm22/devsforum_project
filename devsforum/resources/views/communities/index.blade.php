<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('') }}
        </h2>
    </x-slot>
    <div class="card">


        <div class="card-body">
            @if (session('message'))
                <div class="alert alert-info">{{ session('message') }}</div>
                <br/>
            @endif
            <a href="{{ route('communities.create') }}" class="btn btn-primary">Crear comunidad</a>
            <br/><br/>
            <table class="table">
                <thead>
                <tr>
                    <th>Nombre</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                @foreach ($communities as $community)
                    <tr class="community-item">
                        <td>
                            <a href="{{ route('communities.show', $community) }}">{{ $community->name }}</a>
                        </td>
                        <td>
                            <a href="{{ route('communities.edit', $community) }}"
                               class="btn btn-sm btn-primary">Editar</a>
                            <form action="{{ route('communities.destroy', $community) }}"
                                  method="POST"
                                  style="display: inline-block">
                                @csrf
                                @method('DELETE')
                                <button type="submit"
                                        class="btn btn-sm btn-danger"
                                        onclick="return confirm('¿Estás seguro?, no se podrá recuperar')">Borrar
                                </button>
                            </form>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>



</x-app-layout>
