
<div class="container mx-auto">
    <div class="flex justify-center px-6 my-12">
        <!-- Row -->
        <div class="w-full xl:w-3/4 lg:w-11/12 flex">
            <!-- Col -->
            <div
                class="w-full h-auto bg-gray-400 hidden lg:block lg:w-5/12 bg-cover rounded-l-lg"
                style="background-image: url('{{asset('images/img2.jpg')}}')"
            ></div>
            <!-- Col -->
            <div class="w-full lg:w-7/12 bg-white p-5 rounded-lg lg:rounded-l-none">
                <h3 class="pt-4 text-2xl text-center">Usuario</h3>
                @csrf
                <form class="px-8 pt-6 pb-8 mb-4 bg-white rounded">
                    <div class="mb-4 md:flex md:justify-center">


                    </div>
                    <div class="mb-4">
                        <div class="mb-4 md:mr-2 md:mb-0">
                            <div class="form-group form-group px-8  bg-white rounded">

                                {{ Form::label('name') }}
                                {{ Form::text('name', $user->name, ['class' => 'form-control' . ($errors->has('name') ? ' is-invalid' : ''), 'placeholder' => 'Name']) }}
                                {!! $errors->first('name', '<div class="invalid-feedback">:message</div>') !!}
                            </div>

                        </div>

                    </div>
                    <div class="mb-4">
                        <div class="mb-4 md:mr-2 md:mb-0">
                            <div class="form-group form-group px-8  bg-white rounded">

                                {{ Form::label('email') }}
                                {{ Form::text('email', $user->email, ['class' => 'form-control' . ($errors->has('email') ? ' is-invalid' : ''), 'placeholder' => 'Email']) }}
                                {!! $errors->first('email', '<div class="invalid-feedback">:message</div>') !!}
                            </div>

                        </div>

                    </div>

                    <div class="mb-4">
                        <div class="mb-4 md:mr-2 md:mb-0">


                        </div>

                    </div>
                    <div class="mb-4">
                        <div class="mb-4 md:mr-2 md:mb-0">


                        </div>

                    </div>
                    <div class="mb-4">
                        <div class="mb-4 md:mr-2 md:mb-0">


                        </div>

                    </div>

                    <div class="mb-6 text-center">
                        <button
                            class="w-full px-4 py-2 font-bold text-white bg-blue-500 rounded-full hover:bg-primary focus:outline-none focus:shadow-outline"
                            type="submit"
                        >
                            Continuar
                        </button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>




