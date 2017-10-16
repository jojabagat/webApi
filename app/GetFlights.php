<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Flights;
use Mockery as m;


class GetFlights extends Model
{
    function it_gets_flights()
    {
        // Mock the client to return our XML...
        $client = m::mock()
            ->shouldReceive('getFlights')
            ->once()
            ->andReturn(simplexml_load_string($this->getXml()))
            ->getMock();
 
        // Inject our mock SoapClient into the consumer
        // and make the call that we're testing...
        $response = (new Flights($client))->getFlights();
 
        // Assert that the response is what we would expect...
        $this->assertEquals([
            [
                'title' => 'The Alchemist',
            ], [
                'title' => 'Veronica Decides To Die',
            ], [
                'title' => 'The Second Machine Age',
            ],
        ], $response);
    }
 
    private function getXml()
    {
        return <<<XML
<GetBooksResponse>
    <Books>
        <Book>
            <Title>The Alchemist</Title>
        </Book>
        <Book>
            <Title>Veronica Decides To Die</Title>
        </Book>
        <Book>
            <Title>The Second Machine Age</Title>
        </Book>
    </Books>
<GetBooksResponse>
XML;
    }
}
