<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Flights;

class FlightController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $flights = Flights::all();
        $flights = Flights::join('airlines', 'airlines.a_id', '=', 'flights.a_id')
                        ->join('flight_destination', 'flight_destination.fd_id','=','flights.fd_id')
                        ->join('destinations', 'destinations.d_id','=','flight_destination.d_id')
                        ->join('flight_class','flight_class.fc_id','=','flights.fc_id')
                        ->join('class', 'class.c_id','=','flight_class.c_id')
                        ->get();

        return response()->json($flights, 201);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
