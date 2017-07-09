<div class="row">

    @include('layouts.partials.nav')
	
	@if(\Session::has('message'))
		@include('layouts.blocks.message')
	@endif
	
</div>        

