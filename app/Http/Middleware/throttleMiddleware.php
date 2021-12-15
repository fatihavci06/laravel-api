<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\RateLimiter;

class throttleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $executed = RateLimiter::attempt(
            'send-message:',
            $perMinute = 5,
            function() {
                 return 'Too many messages sent!';
            }
        );

        if (! $executed) {
          return 'Too many messages sent!';
        }
        return $next($request);
    }
}
