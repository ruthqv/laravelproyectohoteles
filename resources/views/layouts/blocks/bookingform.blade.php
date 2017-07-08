<div class="col-sm-4 col-sm-offset-4">
	

	<h3>Booking Now</h3>
	<form action="{{ route('payment') }}" method="post" class="form-group">
        {{ csrf_field() }}
		<input type="hidden" name="hotelid" value="{{ $hot->id }}">
		<input type="hidden" name="hotelname" value="{{ $hot->name }}">

		<input type="hidden" id="price" name="price" value="{{ $hot->price_per_day }}">

		<label for="date_start">DATE OF ARRIVE</label>
		<input class="form-control" type="date" name="date_start" id="date_start"  value="">
		<label for="date_end">DATE OF LEFT</label>	
		<input  class="form-control" type="date" name="date_end" id="date_end" value="">
	
		<p class="amountprice"></p>

		<label for="name">Your name</label>	
		<input  class="form-control" type="text" name="name" value="">
		<label for="name">Your surname</label>	
		<input  class="form-control" type="text" name="surname" value="">		
		<div>
		<select name="paymenttype" id="paymenttype">
		<option type="radio" name="paypal" value="paypal" checked>Pay your booking with Paypal</option>
  		<option type="radio" name="booking" value="booking"> Only Booking</option>			
		</select>


	    </div>
	    <button type="submit">Enviar</button>
	</form>

</div>

@section('scripts')

<script type="text/javascript">

	$(document).ready(function(){
		$('#date_end').blur(function(){
			// console.log('vamos');
			var amount=  $('#price').val();
			var date_start = $('#date_start').val();
			var date_end = $('#date_end').val();
			var finalcount =  Math.floor((Date.parse(date_end)) - (Date.parse(date_start)));
			$('.amountprice').text(amount);

		});
	});
</script>
@stop