<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model
{
    use HasFactory,SoftDeletes;

    //Campos de la tabla Post
    protected $fillable = ['community_id', 'user_id', 'title', 'post_url', 'post_text', 'post_image', 'votes'];

    //Funciones de la clase
    public function community()
    {
        return $this->belongsTo(Community::class);
    }
    //Relacion para saber los votos
    public function postVotes()
    {
        return $this->hasMany(PostVote::class);
    }

    // metodo para saber los votos de la semana, aprovechando el campo creado de tiempo.
    public function votosEnSemana()
    {
        return $this->hasMany(PostVote::class)
            ->where('post.created_at', '>=', now()->subDays(7));
    }

    //Devuelve los comentarios asociados con un post, y con el modificador latest, mostrará los más recientes.
    public function comments()
    {
        return $this->hasMany(Comment::class)->latest();
    }
}
