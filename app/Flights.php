<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Flights extends Model
{
    protected $table = 'flights';
    protected $primaryKey = 'flight_id';
    protected $fillable = ['fc_id','a_id','fd_id','depart_des','flight_no','depart_time','arrive_time','total_seats','duration', 'status'];

    public function flight_class(){
    	return $this->hasMany('App\FlightClass', 'fc_id', 'flight_id');
    }

    public function flight_destination(){
    	return $this->hasMany('App\FlightDestination', 'fd_id', 'flight_id');
    }

    public function airlines(){
    	return $this->belongsTo('App\Airlines');
    }
}
