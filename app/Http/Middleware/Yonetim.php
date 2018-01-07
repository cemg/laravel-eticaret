<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

class Yonetim
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
        if (Auth::guard('yonetim')->check() && Auth::guard('yonetim')->user()->yonetici_mi)
        {
            return $next($request);
        }
        
        return redirect()->route('yonetim.oturumac');
    }
}
