<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class QuestionAsked extends Model {
	
    protected $table = 'quagga_pose_part';
    protected $primaryKey = array('que_id', 'pop_id');
    protected $fillable = ['que_id', 'pop_id', 'med_id', 'med_type'];
}
