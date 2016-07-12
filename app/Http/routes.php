<?php

Route::group(['middleware' => 'auth.web', 'namespace' => 'Web'], function () {
    Route::get('/', 'SearchController@index');
    Route::post('/', 'SearchController@process');

    Route::get('consultas', 'SearchController@fetch');
    Route::get('consultas/{id}', 'SearchController@show');
    Route::get('consultas/excluir/{id}', 'SearchController@destroy');
    Route::get('auth/logout', '\App\Http\Controllers\Auth\AuthController@getLogout');
});

Route::group(['middleware' => 'auth.api', 'namespace' => 'Api'], function () {
    Route::get('api/{cnpj}', 'CustomersController@search');
});

Route::get('documentacao', 'DocumentacaoController@index');

Route::get('auth/login', 'Auth\AuthController@getLogin');
Route::post('auth/login', 'Auth\AuthController@postLogin');

Route::get('auth/register', 'Auth\AuthController@getRegister');
Route::post('auth/register', 'Auth\AuthController@postRegister');




