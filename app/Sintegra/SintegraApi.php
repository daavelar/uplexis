<?php

namespace App\Sintegra;

use App\Events\SearchWasMade;
use Goutte\Client;

class SintegraApi
{
    private $client;

    public function __construct(Client $client)
    {
        $this->client = $client;
    }


    public function fetchCustomerByCnpj($cnpj)
    {
        $crawler = $this->client->request('post', config('sintegra.url'), [
            'num_cnpj' => $cnpj,
            'botao'    => 'Consultar'
        ]);

        $this->validateCnpj($crawler);

        $titulos = $this->filterAndMakeArray($crawler, 'td.titulo');

        $valores = $this->filterAndMakeArray($crawler, 'td.valor');

        $resposta = $this->join($titulos, $valores);

        event(new SearchWasMade($cnpj, json_encode($resposta)));

        return $resposta;
    }


    public function validateCnpj($crawler)
    {
        if (str_contains($crawler->html(), 'Tipo de dados inválido para o campo')) {
            throw new SintegraApiException('Tipo de dados inválido para o campo CNPJ');
        }
    }


    public function filterAndMakeArray($crawler, $html)
    {
        return $crawler->filter($html)->each(function ($node) {
            return $node->text();
        });
    }


    public function join($titulos, $valores)
    {
        $resposta = [];

        foreach ($titulos as $i => $titulo) {
            $resposta[str_database($titulo)] = $valores[$i];
        }
        return $resposta;
    }
}