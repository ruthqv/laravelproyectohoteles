<?php

namespace proyecto\Http\Controllers;

use Illuminate\Http\Request;

use proyecto\Http\Requests;
use proyecto\Http\Controllers\Controller;
use Ssheduardo\Redsys\Facades\Redsys;

class RedsysController extends Controller
{
    
    public function index(Request $request)
    {
    	$operationid = $request->input('operationid');
    
        try{
            $key = config('redsys.key');
              
            Redsys::setAmount(6852);
            Redsys::setOrder(time());
            Redsys::setMerchantcode('999008881'); //Reemplazar por el código que proporciona el banco
            Redsys::setCurrency('978');
            Redsys::setMerchantDirectPayment(true);
            Redsys::setTransactiontype('0');
            Redsys::setTerminal('1');
            Redsys::setMethod('T'); //Solo pago con tarjeta, no mostramos iupay
            Redsys::setNotification(config('redsys.url_notification')); //Url de notificacion
            Redsys::setUrlOk(config('redsys.url_ok'),$operationid); //Url OK
            Redsys::setUrlKo(config('redsys.url_ko')); //Url KO             
            Redsys::setVersion('HMAC_SHA256_V1');
            Redsys::setTradeName('Proyecto-Hoteles-Reservas');
            Redsys::setTitular('Rq');
            Redsys::setProductDescription('Test redsys');
            Redsys::setEnviroment('test'); //Entorno test
            Redsys::setNameForm('nombre_formulario');
            Redsys::setIdForm('id_formulario');
    
            $signature = Redsys::generateMerchantSignature($key);
            Redsys::setMerchantSignature($signature);

            $form = Redsys::executeRedirection();



        }
        catch(Exception $e){
            echo $e->getMessage();
        }
        // return $form;
        // $redirection = $form->executeRedirection();
    	echo json_encode($form);
     }
}

