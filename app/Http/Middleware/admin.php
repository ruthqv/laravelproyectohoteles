<?php

namespace proyecto\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use Illuminate\Contracts\Auth\Guard;

class Admin
{
  protected $auth;

    public function __construct(Guard $auth)
    {
        $this->auth = $auth;
    }
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
       if ($this->auth->user()->type != 'admin') {

            return response()->view('backend/userhome');
        }else{
            return response()->view('backend/adminhome');
        }

        

        return $next($request);

   
    }
}
