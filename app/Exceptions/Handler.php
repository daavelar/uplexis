<?php

namespace App\Exceptions;

use App\Sintegra\SintegraApiException;
use Exception;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that should not be reported.
     *
     * @var array
     */
    protected $dontReport = [
        \Symfony\Component\HttpKernel\Exception\HttpException::class,
    ];

    /**
     * Report or log an exception.
     *
     * This is a great spot to send exceptions to Sentry, Bugsnag, etc.
     *
     * @param  \Exception $e
     * @return void
     */
    public function report(Exception $e)
    {
        return parent::report($e);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Exception $e
     * @return \Illuminate\Http\Response
     */
    public function render($request, Exception $e)
    {
        switch (get_class($e)) {
            case SintegraApiException::class :
                if (array_key_exists('HTTP_AUTHORIZATION', $_SERVER)) {
                    return response('Tipo de dados inválido para o campo CNPJ', 500);
                }
                return redirect('/')->withErrors($e->getMessage());
                break;
            case NotFoundHttpException::class :
                return response('Rota não encontrada', 404);
                break;
        }
        return parent::render($request, $e);
    }
}
