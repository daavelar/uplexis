<?php

namespace App\Events;

use Illuminate\Queue\SerializesModels;

class SearchWasMade extends Event
{
    use SerializesModels;

    public $cnpj;
    public $resultado_json;

    public function __construct($cnpj, $resultado_json)
    {
        $this->cnpj = $cnpj;
        $this->resultado_json = $resultado_json;
    }

}
