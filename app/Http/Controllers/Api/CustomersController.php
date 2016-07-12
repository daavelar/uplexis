<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Sintegra;
use SintegraApi;
use Auth;

class CustomersController extends Controller
{
    public function search($cnpj)
    {
        $resultado_json = SintegraApi::fetchCustomerByCnpj($cnpj);

        return $resultado_json;
    }
}
