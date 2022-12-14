@extends('layouts.app')

@section('content')
@isset($dq) 
	@php
		$asked = $dq->getDisplayQuestionAsked()->getQuestionText()->getTekContents();
		$askedmedid = $dq->getDisplayQuestionAsked()->getQuestionImage()->getMedId();
		$photoFileName = $dq->getDisplayQuestionAsked()->getQuestionImage()->getGrfFileName();
	@endphp
@endisset
<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <h3>Change your question photo</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
        <form id="fm" role="form" action="" enctype="multipart/form-data" method="put" autocomplete="off">
			<input type="hidden" name="queid" value="{{ $dq->getQueId() ?? '' }}" >
			<input type="hidden" name="askedmedid" value="{!! $askedmedid !!}">
            <div class="form-group row">
                <div class="dropzone" id="photo" name="photo"></div>
            </div>
            <div class="form-group row">
                <div class="col-sm-12">Below is your current (old) photo</div>
            </div>
            <div class="form-group row">
                <div class="col-sm-12"><img class="img-fluid" src="/storage/img/{!! $photoFileName !!}"/></div>
            </div>
            <div class="form-feedback"><p></p></div>
            <button type="submit" id="submit" class="btn btn-primary">Save</button>
            <div class="form-onemoment"><p></p></div>
        </form>
        </div>
    </div>
</div>
@endsection

@section('script')
<script src="{{ asset('js/dropzone.min.js') }}"></script>
<script>
Dropzone.prototype.defaultOptions.dictDefaultMessage = "Choose photo";
Dropzone.prototype.defaultOptions.dictRemoveFile = "Remove photo";
Dropzone.options.photo = {
    url: '{{ route('questions.updatephoto') }}',
    paramName: 'photo',
    autoProcessQueue: false,
    uploadMultiple: false,
    maxFiles: 1,
    acceptedFiles: 'image/*',
    resizeWidth: 384,
    addRemoveLinks: true,
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    },    
    init: function() {
        dzClosure = this; // make sure that 'this' is understood inside the functions below.
        
        // for Dropzone to process the queue (instead of default form behavior):
        document.getElementById('submit').addEventListener('click', function(e) {
            // make sure that the form isn't actually being sent.
            e.preventDefault();
            e.stopPropagation();
            if (formIsValid()) {
                dzClosure.processQueue();
            };
        });

        this.on('thumbnail', function(file) {
            if (file.accepted !== false) {
                if (file.size > 8000000) {
                    file.toobig(8); // Mb
                } else {                
                    if (file.width < 384 || file.height < 256 || file.size == 0) {
                        file.rejectDimensions();
                    } else {
                        file.acceptDimensions();
                    }
                }
            }
            formFeedback("");
        });

        this.on('addedfile', function(file) {
            if (this.files.length > 1) {
                this.removeFile(this.files[0]);
            }
        });
 
        // send all the form data along with the files:
        this.on('sending', function(data, xhr, formData) {
        	oneMoment();
            var form = JSON.stringify($('#fm').serializeArray());
            formData.append('fm', form);
            //formData.append('asked', jQuery('#asked').val());
        });

        this.on('success', function() {
        	window.location.href = '/questions/check';
        });
    },
    accept: function(file, done) {
        file.acceptDimensions = done;
        file.rejectDimensions = function() {
        	done("Image must be at least 384px x 256px")
        };
        file.toobig = function(max) {
        	siz = Math.round((file.size / 1000000 + Number.EPSILON) * 100) / 100;
        	done("Image is too big: " + siz + " Mb, max filesize is " + max + " Mb")
        };
    }
}
function formIsValid() {
    if ($('#photo').find('.dz-preview').length == 0) {
    	formFeedback("Please choose photo");
		return false;
    }
    	
	formFeedback("");
	return true;
}
function formFeedback(message) {
    if (message != "") {
        $('div.form-feedback p').html(message);
        $('div.form-feedback').show();
    } else {
    	$('div.form-feedback').hide();
    }
}
function oneMoment() {
    $('div.form-onemoment p').html("One moment please ...");
    $('div.form-onemoment').show();
}
</script>
@endsection
