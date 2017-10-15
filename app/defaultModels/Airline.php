<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Airline extends Model
{
	protected $table = "airline";
	protected $primaryKey = "idairline";
	public $timestamps = FALSE;

	public function flightInfo()
	{
		return $this->hasMany("App\FlightDetails","airline_idairline");
	}
}
