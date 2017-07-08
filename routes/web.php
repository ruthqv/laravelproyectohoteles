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

Route::get('/','HomeController@index')->name('home');

Route::get('/hotel/{id}','HomeController@find')->name('hotel');

Auth::routes();

Route::get('/backend', 'BackendController@index')->name('backend');

Route::post('payment', array(
	'as' => 'payment',
	'uses' => 'BookingController@process',
));

Route::get('payment/status', array(
	'as' => 'payment.status',
	'uses' => 'PaypalController@getPaymentStatus',
));
