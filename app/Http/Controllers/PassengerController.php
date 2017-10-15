<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Passenger;

class PassengerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
        $passenger = Passenger::create(['f_id'=>$request['f_id'],
                                        'fname'=>$request['fname'],
                                        'lname'=>$request['lname'],
                                        'contact_no'=>$request['contact_no'],
                                        'email'=>$request['email'],
                                        'address'=>$request['address']
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
        $passenger = Passenger::where('p_id',$id)
                        ->update(['f_id'=>$request['f_id'],
                                        'fname'=>$request['fname'],
                                        'lname'=>$request['lname'],
                                        'contact_no'=>$request['contact_no'],
                                        'email'=>$request['email'],
                                        'address'=>$request['address']
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
        $passenger = Passenger::where('p_id',$id)->delete();
    }
}
