<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Contracts\Auth\Guard;

class AuthenticateApi
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
    public function handle($request, Closure $next)
    {
        $credentials = [
            'usuario'  => $request->server('PHP_AUTH_USER'),
            'password' => $request->server('PHP_AUTH_PW'),
        ];

        if (!$this->auth->attempt($credentials)) {
            return response('Dados de autenticação inválidos', 401);
        }

        return $next($request);
    }
}
