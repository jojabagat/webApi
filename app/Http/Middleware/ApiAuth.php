<?php

namespace App\Http\Middleware;

use Closure;
use App\User;

class ApiAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $user = User::all();
        foreach($user as $user)
        {
            if($request->key == $user->api_token)
                return $next($request); 
        }
        return response()->json(array("Authentication"=>"Wrong key"),401);
    }
}
