@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <h5>Choose questions to go in your test</h5>
        </div>
    </div>
	<form action="{{ route('tests.chosenquestions') }}" method="post">
	@csrf
	<input name="id" type="hidden" value="{!! isset($test) ? $test->id : 0 !!}" />
    @foreach($ldq as $dq)
    @php ($dqid = $dq->getId())
    @php ($asked = $dq->getDisplayQuestionAsked()->getQuestionText()->getTekContents())
    @php ($photoFileName = $dq->getDisplayQuestionAsked()->getQuestionImage()->getGrfFileName())
	<div class="row">
    	<div class="col-sm-1">
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" style="margin-top: 12px" 
                  	name="dqids[]" value="{{ $dqid }}" {{ in_array($dqid, $dqidarr) ? 'checked' : '' }} />
            </div>
    	</div>
    	<div class="col-sm-2">
       	   	<img class="img-fluid" src="/storage/thumb/{!! $photoFileName !!}" />
    	</div>
    	<div class="col-sm-9 gdtip">
       	   	<p style="margin-top: 5px">{!! $asked !!}</p>
    	</div>
		<div>&nbsp;</div>
    </div>
    @endforeach
    <button type="submit" class="btn btn-primary">Save and sort</button>
    </form>
</div>
@endsection

