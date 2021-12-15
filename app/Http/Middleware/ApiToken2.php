<?php

namespace App\Http\Middleware;

use App\Models\User;
use Closure;

class ApiToken2
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {   

       $auth=$request->header('Authorization');
        if($auth){
            $token=str_replace('Bearer ', '', $auth);
            if(!$token){
                return response()->json(['message'=>'No Bearer Token!']);
            }
            $user=User::where('api_token',$token)->first();
            if(!$user){
                return response()->json(['message'=>'Invalid Bearer Token!']);
            }
            auth()->setUser($user);
        
           return $next($request);

        }
         return response()->json(['message'=>'Not a valid Bearer Token!']);
        
    }
}