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

Route::any('payment', 'BookingController@process')->name('payment');

Route::any('paypal', 'PaypalController@postPayment')->name('paypal');

Route::get('payment/status', 'PaypalController@getPaymentStatus')->name('payment.status');

Route::any('redsys', 'RedsysController@index')->name('redsys');

Route::any('thankyou','ThankyouController@index')->name('thankyou');


Route::get('errorpayment', function()
	{
		return view('frontend.errorpayment');
	});
// Route::prefix('admin')->group(function () {
//     Route::get('users', function () {
//         // Matches The "/admin/users" URL
//     });
// });