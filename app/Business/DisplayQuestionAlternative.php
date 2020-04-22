<?php
namespace App\Business;

class DisplayQuestionAlternative {
	protected $altId;
	protected $isCorrect;
	protected $qt;
	protected $qi;
	
    public function __construct($altid, $altCorrect) {
    	$this->qt = null;	
    	$this->qi = null;	
    	$this->altId = $altid; 
    	$this->isCorrect = ($altCorrect == 1) ? true : false;
    }
	
	public function getAltId() {
		return $this->altId;
	}
		
	public function isCorrect() {
		return $this->isCorrect;
	}
		
	public function getQuestionText() {
		return $this->qt;
	}
		
	public function setQuestionText($questionText) {
		$this->qt = $questionText;
	}
	
	public function getQuestionImage() {
		return $this->qi;
	}
		
	public function setQuestionImage($questionImage) {
		$this->qi = $questionImage;
	}
}	
