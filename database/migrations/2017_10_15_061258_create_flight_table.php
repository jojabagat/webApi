<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFlightTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('flights', function (Blueprint $table) {
            $table->increments('flight_id');
            $table->integer('fc_id')->unsigned();
            $table->integer('a_id')->unsigned();
            $table->integer('fd_id')->unsigned();
            $table->string('flight_no');
            $table->time('depart_time');
            $table->time('arrive_time');
            $table->integer('total_seats');
            $table->integer('duration');
            $table->string('status');
            $table->timestamps();
        });

        Schema::table('flights', function (Blueprint $table) {
            $table->foreign('fc_id')->references('fc_id')->on('flight_class')->onDelete('cascade');
            $table->foreign('a_id')->references('a_id')->on('airlines')->onDelete('cascade');
            $table->foreign('fd_id')->references('fd_id')->on('flight_destination')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('flights');
    }
}
