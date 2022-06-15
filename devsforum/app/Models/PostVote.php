<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PostVote extends Model
{
    use HasFactory;

    protected $fillable = ['post_id', 'user_id', 'vote'];

    //Funcion para saber al post que pertenece el comentario.
    public function post()
    {
        return $this->belongsTo(Post::class);
    }
}
