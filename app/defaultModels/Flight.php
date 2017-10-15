<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Flight extends Model
{
    protected $table = "flight";
    protected $primaryKey = "idflight";
    public $timestamps = FALSE;

    public function oneFlightDetails()
    {
    	return $this->belongsTo("App\FlightDetails");
    }
}
