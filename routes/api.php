<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
// Route::get('/articles/{key}','ArticleController@index')->middleware("apiAuthentication");
Route::post("/flightstatus/{key}/{number}/{from}/{to}/{date}","Flight@flightstatus")->middleware("apiAuthentication");
Route::get('/flight/{key}','FlightController@index')->middleware("apiAuthentication");
Auth::routes();
