@extends('layouts.app')
@section('title', 'Home')
@section('content')

@include('layouts.blocks.slider')

<h1 class="text-center">Hoteles 5 Stars.</h1>

<div class="row">
@foreach ($hotel as $hot)
	<div class="col-sm-3">
	<a href="hotel/{{	$hot->id }}">
		<div class="photogrid">
			<img class="img-thumbnail img-fluid"  src="<?php  echo url('/'); ?>{{ $hot->image }}" alt="">

			<h3>{{$hot->name}}</h3>
			<p class="minheight">{{$hot->description}}</p>
		</div>
	</a>	
	</div>
@endforeach	
</div>

@stop

@section('sidebar')
@for ($i = 0; $i < 4; $i++)

		<div class="widgets">

			<img class="img-thumbnail img-fluid"  src="http://www.imghoteles.com/media/img-hoteles-imageLinknew-fernando-iii-8366_28.jpg" alt="">
			
		</div>

@endfor	
@stop