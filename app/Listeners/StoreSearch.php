<?php

namespace App\Listeners;

use App\Events\SearchWasMade;
use App\Sintegra as SintegraModel;

class StoreSearch
{
    public function handle(SearchWasMade $event)
    {
        SintegraModel::create([
            'idusuario'      => auth()->user()->id,
            'resultado_json' => $event->resultado_json,
            'cnpj'           => $event->cnpj,
        ]);
    }
}
