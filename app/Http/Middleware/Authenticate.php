<?php

namespace App\Http\Middleware;

use App\User;
use Closure;
use Illuminate\Contracts\Auth\Guard;
use Auth;

class Authenticate
{
    /**
     * The Guard implementation.
     *
     * @var Guard
     */
    protected $auth;

    /**
     * Create a new filter instance.
     *
     * @param  Guard $auth
     * @return void
     */
    public function __construct(Guard $auth)
    {
        $this->auth = $auth;
    }

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next, $authType)
    {
        if ($authType == 'api') {
            if (! Auth::attempt($request->only('usuario', 'password'))) {
                return response('Dados de autenticação inválidos', 401);
            }
        }

        if ($this->auth->guest()) {
            return redirect('auth/login');
        }

        return $next($request);
    }
}
