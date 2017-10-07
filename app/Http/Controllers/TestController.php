<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Flight;

class TestController extends Controller
{
 	public function index()
 	{
 		return Flight::all();
 	}   
}
