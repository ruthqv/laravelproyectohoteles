@extends('layouts.app')
@section('title', 'Hotel')
@section('content')



<h1 class="text-center">Tu hotel elegido.</h1>

<div class="row text-center">
@foreach ($hotel as $hot)
	<div class="col-sm-12">

		<div class="photogrid">
			<img class="img-responsive center" src="<?php  echo url('/'); ?>{{ $hot->image }}" alt="{{ $hot->name }}">

			<h3>{{$hot->name}}</h3>
			<h3>Price: {{$hot->price_per_day}} € /day</h3>
			<p class="">{{$hot->description}}</p>
			<div class="col-sm-6">
				<h3>Services</h3>
			    <p class="">{{$hot->services}}</p>
			</div>
			<div class="col-sm-6">
				<h3>Adress /City / Country</h3>
			    <p class="">{{$hot->adress}}</p>
   			    <p class="">{{$hot->city}}</p>
			    <p class="">{{$hot->country}}</p>
 
			</div>
		</div>

	</div>



		@include('layouts.blocks.bookingform')



@endforeach	
</div>

@stop