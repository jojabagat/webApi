<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePassengerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('passengers', function (Blueprint $table) {
            $table->increments('p_id');
            $table->integer('flight_id')->unsigned();
            $table->string('fname');
            $table->string('lname');
            $table->integer('contact_no');
            $table->string('email');
            $table->string('address', 255);
            $table->timestamps();
        });
        Schema::table('passengers', function (Blueprint $table) {
            $table->foreign('flight_id')->references('flight_id')->on('flights')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('passengers');
    }
}
