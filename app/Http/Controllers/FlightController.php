<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Flights;
use App\FlightDestination;
use App\FlightClass;

class FlightController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($key, $flightNumber = null)
    {
        if(isset($flightNumber))
        {
            $flights = Flights::find($flightNumber);
            return response()->json($flights, 201);
        }
        else
        {
            $flights = Flights::join('airlines', 'airlines.a_id', '=', 'flights.a_id')
                            ->join('flight_destination', 'flight_destination.fd_id','=','flights.fd_id')
                            ->join('destinations', 'destinations.d_id','=','flight_destination.d_id')
                            ->join('flight_class','flight_class.fc_id','=','flights.fc_id')
                            ->join('class', 'class.c_id','=','flight_class.c_id')
                            ->join('passengers','passengers.f_id','=','flights.flight_id')
                            ->get();
            return response()->json($flights, 201);
        }
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
        $flight = Flights::create(['fc_id'=>$request['fc_id'],
                                    'a_id'=>$request['a_id'],
                                    'fd_id'=>$request['fd_id'],
                                    'depart_des'=>$request['departure'],
                                    'flight_no'=>$request['flight_no'],
                                    'depart_time'=>$request['depart_time'],
                                    'arrive_time'=>$request['arrive_time'],
                                    'total_seats'=>$request['total_seats'],
                                    'duration'=>$request['duration'],
                                    'status'=>1
                                ]);

            $flight_des = FlightDestination::create(['flight_id'=>$flight->id,
                                                    'd_id'=>$request['fd_id']
                                                    ]);
            $flight_class = FlightClass::create(['flight_id'=>$flight->id,
                                                'c_id'=>$request['c_id']
                                                ]);
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
        $id = $request['id'];
        $flight = Flights::where('flight_id', $id)
                        ->update(['fc_id'=>$request['fc_id'],
                                    'a_id'=>$request['a_id'],
                                    'fd_id'=>$request['fd_id'],
                                    'depart_des'=>$request['departure'],
                                    'flight_no'=>$request['flight_no'],
                                    'depart_time'=>$request['depart_time'],
                                    'arrive_time'=>$request['arrive_time'],
                                    'total_seats'=>$request['total_seats'],
                                    'duration'=>$request['duration'],
                                    'status'=>1
                        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $id = $request['id'];

        $flight = Flights::where('flight_id', $id)->delete();
    }
}
