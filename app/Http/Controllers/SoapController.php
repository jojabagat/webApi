<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artisaninweb\SoapWrapper\SoapWrapper;
use nusoap_client;

class SoapController extends Controller
{
    /**
   * @var SoapWrapper
   */
  protected $soapWrapper;

  /**
   * SoapController constructor.
   *
   * @param SoapWrapper $soapWrapper
   */
  public function __construct(SoapWrapper $soapWrapper)
  {
    $this->soapWrapper = $soapWrapper;
  }

  /**
   * Use the SoapWrapper
   */


  public function getFlights(){
    $client = new nusoap_client("http://localhost:8000/WebApi/public/index.php?wsdl", true);
        $client->encode_utf8 = false;
        $client->decode_utf8 = false;           
        $client->soap_defencoding = 'utf-8';
        $result = $client->call("getAllFlights",array( 'id'=>'1'));

        $error = $client->getError();
        if($error)
        {
            return $error;
            
        }
        else
        {
        return $result;
        }
  }

  public function hello()
  {
    $client = new nusoap_client("http://localhost:8000/WebApi/public/injbjhghhjhgdex.php?wsdl", true);
    $result = $client->call("sendMessage",array( 'name'=>'Richard'));
    
    return $result;
  }

  
}
