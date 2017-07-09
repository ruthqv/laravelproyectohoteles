<?php

namespace proyecto\Http\Controllers;

use DummyFullModelClass;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

use Illuminate\Foundation\Bus\DispatchesCommands;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;

use proyecto\Booking;

class BookingController extends BaseController
{
    
    public function process(Request $request)
    {
        $bookings = new Booking;
        $bookings->name = $request->input('name');
        $bookings->surname  = $request->input('surname');
        $bookings->ammount  = $request->input('price');
        $bookings->date_start_booking  = $request->input('date_start_booking');
        $bookings->type_of_payment  = $request->input('type_of_payment');
        $bookings->date_end_booking  = $request->input('date_end_booking');
        $bookings->hotel_name = $request->input('hotel_name');
        $bookings->hotel_id = $request->input('hotel_id');
       

         $bookings->save();

        echo json_encode($bookings->id);
    }

    public function updatebooking()
    {

    }    

}
