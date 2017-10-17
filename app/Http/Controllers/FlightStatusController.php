<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\FlightDetails;

class FlightStatusController extends Controller
{
    public function show($type, $key,$number)
    {
    	if(!isset($number))
	    	return FlightDetails::all();
    	else
    		if($type == "JSON")
	    		return FlightDetails::find($number);
    }
}
