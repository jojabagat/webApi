<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', function () {
    return view('welcome');
});
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
Route::get("/test","TestController@index");


Route::any('/',function(){
	$server = new nusoap_server();
	$namespace = "/";
	$server->configureWSDL('Test');
	$server->wsdl->schemaTargetNamespace = $namespace;
	$server->decode_utf8 = true;
    $server->soap_defencoding = "UTF-8";

    $server->register(
    		'sendMessage',
    		array('name' => 'xsd:string'),
    		array('message' => 'xsd:string'),
    		$namespace,
	        $namespace,
	        'rpc',
	        'encoded',
	        'sendMessage service'
    );

    $server->register(
    		'getAllFlights',
    		array('id' => 'xsd:string'),
    		array('message' => 'xsd:string'),
    		$namespace,
	        $namespace,
	        'rpc',
	        'encoded',
	        'sendMessage service'
    );


    function sendMessage(){
    	return "Hi";
    }

    function getAllFlights($id){

	
		$xml = new SimpleXMLElement('<xml/>');
		$xml->addChild('message','Successfully retrieved all products');
		$xml->addChild('status','Successful');
		$products = Flights::all();
		foreach($products as $product)
		{
			$track = $xml->addChild('product');
			$track->addChild('id',$product->flight_id);
			$track->addChild('product_name',$product->flight_no);
			$track->addChild('product_description', $product->depart_time);
			$track->addChild('unit_price',$product->arrive_time);
			$track->addChild('reorder_qty',$product->total_seats);
			
		}
 		Header('Content-type: text/xml');
		return $xml->asXML();
		
		// else {
		// $xml = new SimpleXMLElement('<xml/>');
		// $xml->addChild("supplier",null);
		// $xml->addChild('message','Invalid api token');
		// $xml->addChild('status','Error');
		// Header('Content-type: text/xml');
		// return $xml->asXML();	
		// }

 	}

    $server->service(file_get_contents("php://input"));

});