<?php

namespace App\Http\Controllers;

use App\Business\UserTestQuestion;
use App\Mail\QuestionRejected;
use App\Models\Question;
use App\Services\QuestionService;
use App\Services\TestConfigurationService;
use App\Support\Constants;
use App\Support\Helpers\QuestionToolkit;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class AdminController extends Controller
{
    public function index(QuestionService $qs, $status = null) {
        $ldq = QuestionToolkit::getDisplayQuestionsByStatus($status, $qs);
        
        return view('content.admin.questionsindex', compact('ldq', 'status'));
    }
    
    public function show(Request $request, $queid, QuestionService $qs) {
        $que = $qs->find($queid);
        $utq = new UserTestQuestion($queid);

        return view('z.questionexact', compact('utq', 'que'));
    }
    
    public function updatestatus(Request $request, QuestionService $qs, TestConfigurationService $tcfs) {
        $que = $qs->update($request->all());
        if ($que->status == "APPROVED") {
            $tcfs->updateQuestionInTestConfiguration($que, Constants::TEST_CREATED_BY_MEMBERS);
        }
            
        if ($request->input('status') == "REJECTED") {
            $dq = QuestionToolkit::getDisplayQuestionById($que->que_id, $qs);
            $asked = $dq->getDisplayQuestionAsked()->getQuestionText()->getTekContents();
            $pathToPhoto = public_path('storage/img/'.$dq->getDisplayQuestionAsked()->getQuestionImage()->getGrfFileName());
            
            $this->notifyUser($que, $que->reason, $asked, $pathToPhoto);
        }
        
        return redirect()->route('admin.questions.index');
    }

    private function notifyUser(Question $question, $reason, $asked, $pathToPhoto) {
        $question = Question::findOrFail($question->que_id);
        Mail::to($question->owner)->send(new QuestionRejected($question, $reason, $asked, $pathToPhoto));
    }
}
