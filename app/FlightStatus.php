<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FlightStatus extends Model
{
    protected $table = "flightstatus";
    protected $primaryKey = "idflightStatus";
    public $timestamps = FALSE;
}
