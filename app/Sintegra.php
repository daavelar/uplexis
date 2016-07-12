<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sintegra extends Model
{
    public $guarded = ['id'];

    protected $table = 'sintegra';

    public function getResultadoJsonAttribute($resultado)
    {
        return json_decode($resultado, true);
    }
}
