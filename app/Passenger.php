<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Passenger extends Model
{
    protected $table = 'passengers';
    protected $primaryKey = 'p_id';

    public function flights(){
    	return $this->belongsTo('App\Flights');
    }
}
