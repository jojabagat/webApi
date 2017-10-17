@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                    You are logged in!<br>
                    Your key: <strong>{{Auth::user()->api_token}}</strong><br><br>
                    <strong style = "font-size:22px">Documentation</strong><br>
                    <center>
                    <table class = "table-striped col-md-8" style = "width:100%">
                        <tr>
                            <th>Route</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td>/api/{Key}</td>
                            <td>Starting URL for the API<br>
                        </tr>
                        <tr>
                            <td>/flightstatus/</td>
                            <td>Displays flight status</td>
                        </tr>
                        <tr>
                            <td>/flightstatus/{number}</td>
                            <td>Displays flight status' number</td>
                        </tr>
                        <tr>
                            <td>/passenger/</td>
                            <td>Displays all passengers</td>
                        </tr>
                        <tr>
                            <td>/passenger/{number}</td>
                            <td>Display a single passenger with his/her corresponding flight.</td>
                        </tr>
                    </table>
                    <center>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
