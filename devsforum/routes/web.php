<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', [App\Http\Controllers\PostController::class, 'index'])->name('home');


Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

//Rutas add


//Route::resource('tuscomunidades', \App\Http\Controllers\CommunityController::class)->except('show')->name('tuscomunidades');

Route::get('comunidades', [\App\Http\Controllers\CommunityController::class, 'indexAll'])
    ->name('comunidades');



Route::get('c/{slug}',
    [\App\Http\Controllers\CommunityController::class, 'show'])
    ->name('communities.show');

require __DIR__.'/auth.php';


Route::get('p/{postId}',
    [\App\Http\Controllers\CommunityPostController::class, 'show'])
    ->name('communities.posts.show');

Route::group(['middleware' => ['auth', 'verified']], function() {
    Route::resource('communities', \App\Http\Controllers\CommunityController::class)
        ->except('show');
    Route::resource('communities.posts', \App\Http\Controllers\CommunityPostController::class)
        ->except('show');
    Route::resource('posts.comments', \App\Http\Controllers\PostCommentController::class);
    Route::post('posts/{post_id}/report', [\App\Http\Controllers\CommunityPostController::class, 'report'])->name('post.report');
});

//Para administrador.
Route::resource('user', \App\Http\Controllers\UserController::class);

//User in community
Route::resource('usercommunity',\App\Http\Controllers\UserCommunityController::class);
