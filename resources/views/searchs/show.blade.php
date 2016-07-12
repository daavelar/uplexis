@extends('layouts.app')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">Dados do CNPJ: {{ $search->resultado_json['cnpj'] }}</div>

                    <div class="panel-body">

                        <a href="{{ url('consultas') }}">Ver todas as consultas</a>

                        <table class="table table-striped table-bordered">
                            <tr>
                                <td>Cnpj</td>
                                <td>{{ $search->resultado_json['cnpj'] }}</td>
                            </tr>
                            <tr>
                                <td>Inscrição estadual</td>
                                <td>{{ $search->resultado_json['inscricao_estadual'] }}</td>
                            </tr>
                            <tr>
                                <td>Razão social</td>
                                <td>{{ $search->resultado_json['razao_social'] }}</td>
                            </tr>
                            <tr>
                                <td>Logradouro</td>
                                <td>{{ $search->resultado_json['logradouro'] }}</td>
                            </tr>
                            <tr>
                                <td>Número</td>
                                <td>{{ $search->resultado_json['numero'] }}</td>
                            </tr>
                            <tr>
                                <td>Complemento</td>
                                <td>{{ $search->resultado_json['complemento'] }}</td>
                            </tr>
                            <tr>
                                <td>Bairro</td>
                                <td>{{ $search->resultado_json['bairro'] }}</td>
                            </tr>
                            <tr>
                                <td>Munícipio</td>
                                <td>{{ $search->resultado_json['municipio'] }}</td>
                            </tr>
                            <tr>
                                <td>Estado</td>
                                <td>{{ $search->resultado_json['uf'] }}</td>
                            </tr>
                            <tr>
                                <td>Cep</td>
                                <td>{{ $search->resultado_json['cep'] }}</td>
                            </tr>
                            <tr>
                                <td>Telefone</td>
                                <td>{{ $search->resultado_json['telefone'] }}</td>
                            </tr>
                            <tr>
                                <td>Atividade econômica</td>
                                <td>{{ $search->resultado_json['atividade_economica'] }}</td>
                            </tr>
                            <tr>
                                <td>Data de início de atividade</td>
                                <td>{{ $search->resultado_json['data_de_inicio_de_atividade'] }}</td>
                            </tr>
                            <tr>
                                <td>Situação cadastral vigente</td>
                                <td>{{ $search->resultado_json['situacao_cadastral_vigente'] }}</td>
                            </tr>
                            <tr>
                                <td>Data desta situação cadastral</td>
                                <td>{{ $search->resultado_json['data_desta_situacao_cadastral'] }}</td>
                            </tr>
                            <tr>
                                <td>Regime de apuração</td>
                                <td>{{ $search->resultado_json['regime_de_apuracao'] }}</td>
                            </tr>
                            <tr>
                                <td>Emitente de nfe desde</td>
                                <td>{{ $search->resultado_json['emitente_de_nfe_desde'] }}</td>
                            </tr>
                            <tr>
                                <td>Obrigada a nf e em</td>
                                <td>{{ $search->resultado_json['obrigada_a_nf_e_em'] }}</td>
                            </tr>

                            </tr>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection