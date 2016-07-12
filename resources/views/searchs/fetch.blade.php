@extends('layouts.app')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">Total de <b>{{ $searchs->total() }}</b> consultas</div>

                    <div class="panel-body">

                        @if(session()->has('success'))
                            <div class="alert alert-success">
                                {{ session('success') }}
                            </div>
                        @endif

                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>Cnpj</th>
                                <th>Realizada em</th>
                                <th>Ações</th>
                            </tr>
                            @foreach($searchs as $search)
                                <tr>
                                    <td>{{ $search->cnpj }}</td>
                                    <td>{{ $search->created_at->format('d/m/Y H:i:s') }}</td>
                                    <td>
                                        <a href="{{ url("consultas/{$search->id}") }}"
                                           class="btn btn-primary btn-sm">
                                            <i class="fa fa-eye"></i> Visualizar
                                        </a>
                                        <a class="btn btn-danger btn-sm"
                                           href="{{ url('consultas/excluir', $search->id) }}">
                                            <i class="fa fa-trash"></i> Excluir
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                        {!! $searchs->render() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection