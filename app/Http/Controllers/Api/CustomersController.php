<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Sintegra;
use Illuminate\Http\Request;
use SintegraApi;
use Auth;

class CustomersController extends Controller
{
    public function search($cnpj)
    {
        $this->middleware('auth:api');

        $resultado_json = SintegraApi::consultar($cnpj);

        return $resultado_json;
    }
}
