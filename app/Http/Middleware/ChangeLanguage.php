<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;

class ChangeLanguage
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
        if (Session::has('lang')) {
            $lang = session('lang');
            if (! in_array($lang, ['en', 'ar'])) {
                abort(400);
            }

            App::setLocale($lang);
        }

        return $next($request);
    }
}
