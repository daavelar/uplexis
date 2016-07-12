<?php namespace App\Sintegra;

use Goutte\Client;
use Illuminate\Support\ServiceProvider;

class SintegraServiceProvider extends ServiceProvider
{

    public function register()
    {
        $this->app->bind('sintegra', function () {
            return new SintegraApi(new Client());
        });
    }
}