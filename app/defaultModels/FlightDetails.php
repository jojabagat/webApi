<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FlightDetails extends Model
{
   protected $table = "flightinfo";
   protected $primaryKey = "idflightinfo";
   public $timestamps = FALSE;

   public function flight()
   {
   		return $this->hasMany("App\flight","flightinfo_idflightinfo");
   }
}
