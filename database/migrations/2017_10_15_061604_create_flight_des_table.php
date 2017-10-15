<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFlightDesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('flight_destination', function (Blueprint $table) {
            $table->increments('fd_id');
            $table->integer('flight_id')->unsigned();
            $table->integer('d_id')->unsigned();
            $table->timestamps();
        });

        Schema::table('flight_destination', function (Blueprint $table) {
            $table->foreign('flight_id')->references('flight_id')->on('flight')->onDelete('cascade');
            $table->foreign('d_id')->references('d_id')->on('destinations')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('flight_destination');
    }
}
