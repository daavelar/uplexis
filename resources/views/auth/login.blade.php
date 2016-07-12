@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Login</div>
                    <div class="panel-body">
                        <form class="form-horizontal" role="form" method="POST" action="{{ url('auth/login') }}">
                            {{ csrf_field() }}

                            <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                                <label for="email" class="col-md-4 control-label">Usuário</label>

                                <div class="col-md-6">
                                    <input id="email" type="text" class="form-control" name="usuario"
                                           value="{{ old('email') }}">

                                </div>
                            </div>

                            <div class="form-group">
                                <label for="password" class="col-md-4 control-label">Senha</label>

                                <div class="col-md-6">
                                    <input id="password" type="password" class="form-control" name="password">
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-md-6 col-md-offset-4">
                                    <button type="submit" class="btn btn-primary btn-block">
                                        <i class="fa fa-btn fa-sign-in"></i> Login
                                    </button>

                                </div>
                            </div>

                            @if($errors->has())
                                <div class="alert alert-danger text-center">
                                    {{  $errors->first() }}
                                </div>
                            @endif
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
