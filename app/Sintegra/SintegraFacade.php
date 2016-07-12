<?php namespace App\Sintegra;

use Illuminate\Support\Facades\Facade;

class SintegraFacade extends Facade
{

    public static function getFacadeAccessor()
    {
        return 'sintegra';
    }
}