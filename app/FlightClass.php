<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FlightClass extends Model
{
    protected $table = 'flight_class';
    protected $primaryKey = 'fc_id';
    protected $fillable = ['flight_id', 'c_id'];
}
