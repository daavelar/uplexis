@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">Pesquisar CNPJ</div>

                    <div class="panel-body">
                        <form action="{{ url('/') }}" method="post">
                            {{ csrf_field() }}
                            <div class="col-lg-6">
                                <input type="text" name="cnpj" placeholder="Digite o CNPJ que deseja pesquisar"
                                       class="form-control">
                            </div>
                            <div class="col-lg-2">
                                <button class="btn btn-primary">
                                    <i class="fa fa-search"></i>
                                    Pesquisar
                                </button>
                            </div>
                        </form>

                        @if($errors->has())
                            <div class="col-lg-12 m-t-5">
                                <div class="alert alert-danger">
                                    {{ $errors->first() }}
                                </div>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
