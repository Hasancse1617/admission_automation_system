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
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id');
            $table->string('name')->nullable();
            $table->string('image')->nullable();
            $table->string('title')->nullable();
            $table->string('objective')->nullable();
            $table->string('phone')->nullable();
            $table->string('email')->nullable();
            $table->string('github')->nullable();
            $table->string('linkedin')->nullable();
            $table->string('skills')->nullable();
            $table->string('address')->nullable();
            // $table->string('educations')->nullable();
            // $table->string('projects')->nullable();
            // $table->string('experiences')->nullable();
            $table->tinyInteger('status');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('students');
    }
};
