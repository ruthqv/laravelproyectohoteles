<?php

namespace proyecto\Http\Controllers;

use DummyFullModelClass;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

use Illuminate\Foundation\Bus\DispatchesCommands;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;

use PayPal\Rest\ApiContext;
use PayPal\Auth\OAuthTokenCredential;
use PayPal\Api\Amount;
use PayPal\Api\Details;
use PayPal\Api\Item;
use PayPal\Api\ItemList;
use PayPal\Api\Payer;
use PayPal\Api\Payment;
use PayPal\Api\RedirectUrls;
use PayPal\Api\ExecutePayment;
use PayPal\Api\PaymentExecution;
use PayPal\Api\Transaction;

use App\Booking;

class BookingController extends BaseController
{
   private $_api_context;

    public function __construct()
    {
        // setup PayPal api context
        $paypal_conf = \Config::get('paypal');
        $this->_api_context = new ApiContext(new OAuthTokenCredential($paypal_conf['client_id'], $paypal_conf['secret']));
        $this->_api_context->setConfig($paypal_conf['settings']);

    }


    public function process()
    {
	    $price = Input::get('price');
	    $date_start = Input::get('date_start');
	    $date_end = Input::get('date_end');
	    $hotelname = Input::get('hotelname');
	    $hotelid = Input::get('hotelid');
	    $paymenttype = Input::get('paymenttype');
	    // echo $price . $date_end .$date_start.$hotelname.$hotelid .$payment;

	    if($paymenttype == "paypal"){
	    	$this->postPayment();

	    }

    }

    public function insertbooking()
    {

    }

    public function updatebooking()
    {

    }    

    public function postPayment()
    {
        


        $payer = new Payer();
        $payer->setPaymentMethod('paypal');

        $cart = \Session::get('cart');
        $currency = 'EUR';

  
 
        $details = new Details();
      

        $total = '10.0';

        $amount = new Amount();
        $amount->setCurrency($currency)
            ->setTotal($total);

        $transaction = new Transaction();
        $transaction->setAmount($amount);

        $redirect_urls = new RedirectUrls();
        $redirect_urls->setReturnUrl(\URL::route('payment.status'))
            ->setCancelUrl(\URL::route('payment.status'));

        $payment = new Payment();
        $payment->setIntent('sale')
            ->setPayer($payer)
            ->setRedirectUrls($redirect_urls)
            ->setTransactions(array($transaction));

        try {
            $payment->create($this->_api_context);
        }catch (\PayPal\Exception\PayPalConnectionException $ex) {

        echo $ex->getMessage();    
    
        echo $ex->getData();
        } 
        


        // add payment ID to session
        \Session::put('paypalid', $payment->getId());
        
        $approvalUrl = $payment->getApprovalLink();
        
        if(isset($approvalUrl)) {
        	print_r($approvalUrl);
             echo '<iframe src="'.$approvalUrl.'"></iframe>';
            // redirect to paypal
            // return \Redirect::away($approvalUrl);
        }else{
        	return \Redirect::route('home')
        	 ->with('message', 'Ups! Error desconocido.');
        }


     }

    public function getPaymentStatus()
    {
            // Get the payment ID before session clear
        $payment_id = \Input::get('paymentId');

        // clear the session payment ID
        // \Session::forget('paypal_payment_id');

        $payerId = \Input::get('PayerID');

        $token = \Input::get('token');

        if (empty($payerId) || empty($token)) {
            return \Redirect::route('home')
                ->with('message', 'Hubo un problema al intentar pagar con Paypal');
        }

        $payment = Payment::get($payment_id, $this->_api_context);

        $execution = new PaymentExecution();
        $execution->setPayerId(\Input::get('PayerID'));

        $result = $payment->execute($execution, $this->_api_context);


        if ($result->getState() == 'approved') {


            \Session::forget('cart');

            return \Redirect::route('home')
                ->with('message', 'Compra realizada de forma correcta');
        }
        return \Redirect::route('home')
            ->with('message', 'La compra fue cancelada');
    }





}
