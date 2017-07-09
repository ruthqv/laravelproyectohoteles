<div class="col-sm-4 col-sm-offset-4">
	

	<h3>Booking Now</h3>
	<form action="#" method="post" class="form-group">
        {{ csrf_field() }}
		<input type="hidden" name="hotel_id" id="hotel_id" value="{{ $hot->id }}">
		<input type="hidden" name="hotel_name" id="hotel_name" value="{{ $hot->name }}">
        <input type="hidden" id="token" value="{{ csrf_token() }}">
		<input type="hidden" id="price" name="price" value="{{ $hot->price_per_day }}">

		<label for="date_start_booking">DATE OF ARRIVE</label>
		<input class="form-control" type="date" name="date_start_booking" id="date_start_booking"  value="">
		<label for="date_end_booking">DATE OF LEFT</label>	
		<input  class="form-control" type="date" name="date_end_booking" id="date_end_booking" value="">
	
		<p class="amountprice"></p>

		<label for="name">Your name</label>	
		<input  class="form-control" type="text" name="name" id="name" value="">
		<label for="name">Your surname</label>	
		<input  class="form-control" type="text" name="surname" id="surname"  value="">		
		<div>

		<label for="name">Your payment method</label>	

		<select  class="form-control" name="type_of_payment" id="type_of_payment">
			<option class="form-control" type="radio" name="paypal" value="paypal" checked>Pay with Paypal</option>
			<option class="form-control"  type="radio" name="redsys" value="redsys" checked>Pay with Redsys</option>
<!--   			<option type="radio" name="booking" value="booking"> Only Booking</option>			
 -->		</select>


	    </div>
	    <button type="submit" id="pago" class="btn btn-info">Enviar</button>
	</form>
	
</div>

@section('scripts')

<script type="text/javascript">


	$(document).ready(function(){
		$('#pago').on('click',function(e){
			 e.preventDefault();
			
			var type_of_payment = $('#type_of_payment').val();
			var token = $('#token').val();
			var name = $('#name').val();
			var surname = $('#surname').val();
			var ammount = $('#ammount').val();
			var hotel_id = $('#hotel_id').val();
			var hotel_name = $('#hotel_name').val();
			var price = $('#price').val();
			var date_start_booking = $('#date_start_booking').val();
			var date_end_booking = $('#date_end_booking').val();
			
			booking(type_of_payment,token,name,surname,ammount,hotel_id,hotel_name,price,date_start_booking,date_end_booking);







		});

		function booking(type_of_payment,token,name,surname,ammount,hotel_id,hotel_name,price,date_start_booking,date_end_booking)
		{
			// console.log(type_of_payment);

			var path = "{{ route('payment') }}";
		 	var data ={
		 		 '_token': token,
				"type_of_payment": type_of_payment,
				"name": name,
				"surname": surname,
				"price": price,
				"hotel_id": hotel_id,
				"hotel_name": hotel_name,
				"date_start_booking": date_start_booking,
				"date_end_booking": date_end_booking,
			}
			$.post(
				path, 
				data, 
				function(operationid){
						alert(operationid);
						if(type_of_payment == 'paypal')
						{
							paypal(operationid, type_of_payment,token,name,surname,ammount,hotel_id,hotel_name,price,date_start_booking,date_end_booking);
						}

						else if(type_of_payment == 'redsys'){

							redsys(operationid, type_of_payment,token,name,surname,ammount,hotel_id,hotel_name,price,date_start_booking,date_end_booking);
						}

					},
	       
				"json"
			);

		};


		function paypal(operationid, type_of_payment,token,name,surname,ammount,hotel_id,hotel_name,price,date_start_booking,date_end_booking)
		{
			// console.log(type_of_payment);

			var path = "{{ route('paypal') }}";
		 	var data ={
		 		'_token': token,
		 		'operationid': operationid,
				"type_of_payment": type_of_payment,
				"name": name,
				"surname": surname,
				"price": price,
				"hotel_id": hotel_id,
				"hotel_name": hotel_name,
				"date_start_booking": date_start_booking,
				"date_end_booking": date_end_booking,
			}
			$.post(
				path, 
				data, 
				function(response){
						window.location.href = response;

					},
	       
				"json"
			);

		};

		function redsys(operationid,type_of_payment,token,name,surname,ammount,hotel_id,hotel_name,price,date_start_booking,date_end_booking)
		{
			// console.log(type_of_payment);

			var path = "{{ route('redsys') }}";
		 	var data ={
		 		 '_token': token,
		 		'operationid': operationid, 
				"type_of_payment": type_of_payment,
				"name": name,
				"surname": surname,
				"price": price,
				"hotel_id": hotel_id,
				"hotel_name": hotel_name,
				"date_start_booking": date_start_booking,
				"date_end_booking": date_end_booking,
			}
			$.post(
				path, 
				data, 
				function(response){
						 $('form').append(response);
		
					},
	       
				"html"
			);

		};
});

	// $(document).ready(function(){
	// 	$('#date_end').blur(function(){
	// 		// console.log('vamos');
	// 		var amount=  $('#price').val();
	// 		var date_start = $('#date_start').val();
	// 		var date_end = $('#date_end').val();
	// 		var finalcount =  Math.floor((Date.parse(date_end)) - (Date.parse(date_start)));
	// 		$('.amountprice').text(amount);

	// 	});
	// });
</script>
@stop