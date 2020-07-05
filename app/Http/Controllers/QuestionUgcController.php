<?php
namespace App\Http\Controllers;

use App\Business\DisplayQuestion;
use App\Business\DisplayQuestionAlternative;
use App\Models\Question;
use App\Services\ImageService;
use App\Services\QuestionService;
use App\Support\Helpers\QuestionToolkit;
use Illuminate\Http\Request;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Exception;

class QuestionUgcController extends Controller
{
    public function index(QuestionService $qs) {
        $ldq = QuestionToolkit::getDisplayQuestionsByUser(Auth::user()->id, $qs);
        
        return view('content.questions.index', compact('ldq'));
    }

    public function create() {
        return view('content.questions.create');
    }

    public function store(Request $request, QuestionService $qs, ImageService $is) {
        $this->validate($request, [
            'fm'    => 'required',
            'photo' => 'image|required|mimes:jpeg,png,jpg,gif,svg',
        ]);
        
        $fm = $request->input('fm');
        $fmd = json_decode($fm, true);

        $photo = $request->file('photo');
        $qi = QuestionToolkit::createImage(0, 'B', $photo->getClientOriginalname());
        $qt = QuestionToolkit::createText(0, 'T', $fmd[0]['value']); // $fmd[0]['name'] == 'asked'
        
        if (sizeof($fmd) > 6) {
            throw new Exception("more than 4 alternatives for question given");
        }
        
        $ldqalt = new Collection();
        $i = 1;
        while ($i < sizeof($fmd)) {
            $dqalt = null;
            if ($fmd[$i]['name'] == 'iscorrect') {
                $dqalt = new DisplayQuestionAlternative($i, 1);
                $i++;
            } else {
                $dqalt = new DisplayQuestionAlternative($i, 0);
            }
        
            $dqalt->setQuestionText(QuestionToolkit::createText(0, 'T', $fmd[$i]['value']));
            $ldqalt->push($dqalt);
            $i++;
        }
         
        $que = $qs->saveQuestion($qt, $qi, $ldqalt, Auth::user());
        $request->session()->put('que', $que);
        
        $is->save($photo, $que->que_id);
        // return is void, because redirect is done on complete event in create.blade.php
        // return response()->json(['success'=>$imageName]);
    }

    public function check(Request $request) {
        $que = $request->session()->get('que');
        
        if ($que == null) {
            return view('errors.app')->withErrors(["something-wrong"=>"Something went wrong!"]);
        }
        
        return redirect('/z/render/'.$que->que_id.'/5');
    }
     
    // NOT USED
    public function fetch(Request $request, ImageService $is) {
        $photoFileName = $request->input('photoFileName');
        Log::info($photoFileName);
        
        echo $is->get($photoFileName);
        return;
    }
    
    public function show(Question $question) {
        // implicit retrieval of question is done by Laravel
        return redirect('/z/render/'.$question->que_id.'/5');
    }

    public function edit(Question $question) {
        // implicit retrieval of question is done by Laravel
    }
    
    public function editphoto($queid, QuestionService $qs) {
        $dq = new DisplayQuestion($queid);
        $dq = QuestionToolkit::getDisplayQuestion($dq, $qs);
        
        return view('content.questions.editphoto', compact('dq'));
    }
    
    public function edittext($queid, QuestionService $qs) {
        $dq = new DisplayQuestion($queid);
        $dq = QuestionToolkit::getDisplayQuestion($dq, $qs);
        
        return view('content.questions.edittext', compact('dq'));
    }
    
    public function update(Request $request, Question $question) {
        // implicit retrieval of question is done by Laravel
    }

    public function updatephoto(Request $request, QuestionService $qs, ImageService $is) {
        $this->validate($request, [
            'fm'    => 'required',
            'photo' => 'image|required|mimes:jpeg,png,jpg,gif,svg',
        ]);
        
        $photo = $request->file('photo');
        Log::info($photo->getClientOriginalname());
        $qi = QuestionToolkit::createImage(0, 'B', $photo->getClientOriginalname());
        
        $id = $request->input('id');
        // todo
        //$que = $qs->updateQuestionPhoto($id, $qi, new User(['id' => 1]));
        //$request->session()->put('que', $que);
        
        $is->save($photo);
       
        return response()->json(['success' => 'ok then']);
    }
    
    public function updatetext(Request $request, QuestionService $qs) {
        $this->validate($request, [
            'queid'         => 'required', // hidden input
            'asked'         => 'required',
            'iscorrect'     => 'required',
            'alternative'   => 'required',
        ]);
        
        $queId = $request->input('queid');
        $dq = new DisplayQuestion($queId);
        $dq = QuestionToolkit::getDisplayQuestion($dq, $qs);
        
        // todo: a lot
    }
        
    public function destroy(Question $question) {
        //
    }
}
