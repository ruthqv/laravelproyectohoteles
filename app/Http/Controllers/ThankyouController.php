<?php

namespace proyecto\Http\Controllers;

use Illuminate\Http\Request;

use proyecto\Booking;

class ThankyouController extends Controller
{
    public function __construct()
    {

    }
        public function index(Request $request)
    {
    	$req=  $request->all();
    	// $req = $request->all();

    	if(isset($req['payment_id']) && ($req['operationid'])){
    		$operationid = $req['operationid'];
	    	$id_of_payment = $req['payment_id'];
	    	// print_r($operationid);
	     //    print_r ($req);
	        $bookings = new Booking;
	        $bookings->id_of_payment = $request->input('id_of_payment');
	       
	        Booking::where('id', $operationid)->update(array('id_of_payment' => ''.$id_of_payment.''));
        }
        elseif(isset($req['operationid']) && ($req['Ds_MerchantParameters'])){
	     print_r ($req);
	        $operationid = $req['operationid'];
	    	$id_of_payment = $req['Ds_MerchantParameters'];
	    	// print_r($operationid);
      //       print_r ($req);
	        $bookings = new Booking;
	        $bookings->id_of_payment = $request->input('id_of_payment');
	       
	        Booking::where('id', $operationid)->update(array('id_of_payment' => ''.$id_of_payment.''));
        }
    	return view('frontend.thankyou');
    }
}
