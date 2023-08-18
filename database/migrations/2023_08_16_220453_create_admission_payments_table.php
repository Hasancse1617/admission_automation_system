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
        Schema::create('admission_payments', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('organization_id');
            $table->bigInteger('student_id');
            $table->bigInteger('admission_id');
            $table->string('amount');
            $table->string('card');
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
        Schema::dropIfExists('admission_payments');
    }
};
