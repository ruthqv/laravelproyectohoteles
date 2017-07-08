<?php


namespace proyecto\Http\Controllers;

use proyecto\Hotel;
use proyecto\Booking;
use Illuminate\Http\Request;

class HomeController extends Controller
{

	public function index()
	{
		$hotel = new Hotel();
		
		$hotel = Hotel::where('type','1 star')->get();

		foreach ($hotel as $hot) {
				$hot->image = substr($hot->image, 39);
		}

		return view('home')->with('hotel', $hotel);
	}

	public function find($id)
	{

		$hotel = Hotel::where('id',$id)->get();
		foreach ($hotel as $hot) {
				$hot->image = substr($hot->image, 39);
		}
		return view('frontend.hotel')->with('hotel', $hotel);	
	}


}
