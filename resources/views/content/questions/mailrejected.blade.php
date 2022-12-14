<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <p>Hello,</p>
            <p>We are sorry to inform you that your question was rejected.</p>
    		<p>Kind regards, GhanaDriver</p>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <h4>Reason: {!! $reason !!}</h3>
        </div>
		@if ($asked != null)
	    	<div class="col-sm-12">
				<p>{!! $queid !!}. {!! $asked !!}<p>  				
			</div>
		@endif
		@if ($pathToPhoto != null)
			<div class="col-sm-12">
  			   <img src="{{ $message->embed($pathToPhoto) }}">
			</div>
		@endif
    	<div class="col-sm-12">
    		<h4><a href="{{ route('questions.index') }}">See your questions</a></h4>
    	</div>
    </div>
</div>
