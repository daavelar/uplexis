<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Sintegra as SintegraModel;
use App\Http\Requests;
use GuzzleHttp\Client;
use SintegraApi;
use App\Http\Requests\Search as SearchRequest;

class SearchController extends Controller
{

    private $guzzle;

    public function __construct(Client $guzzle)
    {
        $this->guzzle = $guzzle;
    }

    public function index()
    {
        return view('searchs.index');
    }

    public function process(SearchRequest $request)
    {
        $search = SintegraApi::fetchCustomerByCnpj($request->cnpj);

        return view('searchs.process', compact('search'));
    }

    public function fetch()
    {
        $searchs = SintegraModel::paginate(10);

        return view('searchs.fetch', compact('searchs'));
    }

    public function show($id)
    {
        $search = SintegraModel::find($id);

        return view('searchs.show', compact('search'));
    }

    public function destroy($id)
    {
        $search = SintegraModel::find($id);
        $search->delete();

        session()->flash('success', 'Busca excluída com sucesso');

        return back();
    }
}
