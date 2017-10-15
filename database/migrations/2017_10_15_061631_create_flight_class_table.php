<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFlightClassTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('flight_class', function (Blueprint $table) {
            $table->increments('fc_id');
            $table->integer('flight_id')->unsigned();
            $table->integer('c_id')->unsigned();
            $table->timestamps();
        });
        Schema::table('flight_class', function (Blueprint $table) {
            $table->foreign('flight_id')->references('flight_id')->on('flight')->onDelete('cascade');
            $table->foreign('c_id')->references('c_id')->on('class')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('flight_class');
    }
}
