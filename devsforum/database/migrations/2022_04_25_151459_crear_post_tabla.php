<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;


return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->id();
            //this reference to id of table within text
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->foreignId('community_id')->constrained()->onDelete('cascade');
            $table->string('title');
            $table->text('post_url')->nullable();
            $table->text('post_text')->nullable();
            $table->text('post_image')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('posts');
    }
};
