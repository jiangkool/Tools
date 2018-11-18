<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['prefix' => 'wechat','middleware'=>['web']], function() {

    Route::post('login','WechatController@login');
    Route::post('getArticleList','WechatController@getArticleList');
    Route::post('show/{article}','WechatController@show');
    Route::post('search','WechatController@search');
});
