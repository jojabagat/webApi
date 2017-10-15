<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Passenger extends Model
{
    protected $table = 'passengers';
    protected $primaryKey = 'p_id';
    protected $fillable = ['f_id','fname','lname','contact_no','email','address'];

    public function flights(){
    	return $this->belongsTo('App\Flights');
    }
}
