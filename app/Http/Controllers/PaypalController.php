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


class PaypalController extends BaseController
{
    private $_api_context;

    public function __construct()
    {
        // setup PayPal api context
        $paypal_conf = \Config::get('paypal');
        $this->_api_context = new ApiContext(new OAuthTokenCredential($paypal_conf['client_id'], $paypal_conf['secret']));
        $this->_api_context->setConfig($paypal_conf['settings']);

    }

    public function postPayment(Request $request)
    {
  

        $payer = new Payer();
        $payer->setPaymentMethod('paypal');

        $cart = \Session::get('cart');
        $currency = 'EUR';

  
 
        $details = new Details();
      

        $total = $request->input('price');
        $operationid = $request->input('operationid');

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
       \Session::put('operationid', $operationid);

        $approvalUrl = $payment->getApprovalLink();
        if(isset($approvalUrl)) {

            // print_r($payment);
            // redirect to paypal
            echo json_encode($approvalUrl);
             // return \Redirect::away($approvalUrl);
        }

        // return \Redirect::route('home')
        //     ->with('message', 'Ups! Error desconocido.');

    }

    public function getPaymentStatus()
    {
        // Get the payment ID before session clear
        $payment_id = \Input::get('paymentId');

        $operationid = \Session::get('operationid');

        $payerId = \Input::get('PayerID');

        $token = \Input::get('token');

        // clear the session payment ID
        // \Session::forget('paypal_payment_id');

        if (empty($payerId) || empty($token)) {
            return \Redirect::route('errorpayment')
                ->with('message', 'Hubo un problema al intentar pagar con Paypal');
        }

        $payment = Payment::get($payment_id, $this->_api_context);

        $execution = new PaymentExecution();

        $execution->setPayerId(\Input::get('PayerID'));

        $result = $payment->execute($execution, $this->_api_context);


        if ($result->getState() == 'approved') {

            $opdatas = array(
                'token'=>$token,
                'payment_id'=>$payment_id,
                'payerId' => $payerId,
                'operationid' => $operationid
                );

             \Session::forget('cart');

            return \Redirect::route('thankyou', $opdatas)
                ->with('message', 'Compra realizada de forma correcta');
        }

        return \Redirect::route('thankyou')
            ->with('message', 'La compra fue cancelada');
    }


}