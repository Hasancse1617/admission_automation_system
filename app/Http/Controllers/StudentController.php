<?php

namespace App\Http\Controllers;

use App\Models\Education;
use App\Models\Project;
use App\Models\StudentDetail;
use App\Models\StudentPayment;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class StudentController extends Controller
{
    public function studentLogin(Request $request){
        if($request->isMethod('post')){
            $rules = [
                'email' => ['required', 'string', 'email', 'max:255'],
                'password' => ['required'],
            ];
            $request->validate($rules);

            $student = User::where('email', $request->email)->first();
            if($student){
                $checkPayment = StudentPayment::where('student_id', $student->id)->first();
                $checkCv = StudentDetail::where('student_id', $student->id)->where('status', 1)->first();
                if(!$checkPayment){
                    return redirect()->route('student_payment')->with('error','Pay first before login');
                }
                if(!$checkCv){
                    return redirect()->route('student_cv')->with('error','Create CV before login');
                }
                // dd("Hasan");
                //Login Student
                $remember = false;
                if(isset($request->remember)){
                    $remember = true;
                }
                if (Auth::attempt(['email' => $request->email, 'role' => 2, 'password' => $request->password], $remember)) {
                    $request->session()->regenerate();
                    return redirect()->route('student_dashboard');
                }
                return back()->withErrors([
                    'email' => 'Invalid Username or Password',
                ]);

            }
        }
        return view('student.login');
    }

    public function studentRegistration(Request $request){
        if($request->isMethod('post')){
            $rules = [
                'name' => ['required', 'string', 'max:255'],
                'username' => ['required', 'string', 'max:255'],
                'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
                'password' => ['required', 'min:6', 'confirmed'],
            ];
            $request->validate($rules);
            // dd($request->all());
            $user = User::create([
                'name' => $request->name,
                'username' => $request->username,
                'email' => $request->email,
                'role' => 2,
                'status' => 1,
                'password' => Hash::make($request->password),
            ]);
            $student = new StudentDetail();
            $student->student_id = $user->id;
            $student->name = $user->name;
            $student->status = 0;
            $student->save();

            $request->session()->put('student_email', $user->email);

            return redirect()->route('student_payment')->with('message', 'Student add successfully.');
        }
        return view('student.registration');
    }

    public function studentPayment(Request $request){
        if($request->isMethod('post')){
            $rules = [
                'email' => ['required', 'string', 'max:255'],
                'amount' => ['required', 'string', 'max:255'],
                'card' => ['required', 'numeric', 'min:6'],
            ];
            $request->validate($rules);
            
            if($request->email){
                $userStudent = User::where('email', $request->email)->first();
                $paymet = StudentPayment::where('student_id', $userStudent->id)->first();
                if($paymet){
                    return redirect()->route('student_cv')->with('message','Payment already Cleared');
                }else{
                    $studentPayment = new StudentPayment();
                    $studentPayment->student_id = $userStudent->id;
                    $studentPayment->amount = $request->amount;
                    $studentPayment->card = $request->card;
                    $studentPayment->status = 1;
                    $studentPayment->save();

                    $request->session()->put('student_email', $request->email);

                    return redirect()->route('student_cv')->with('message','Payment successful');
                }
            }
            else{
                return redirect()->back()->with('error', 'Something went wrong');
            }
        }
        return view('student.payment');
    }

    public function studentCv(Request $request){
        if($request->isMethod('post')){
            $rules = [
                'email' => ['required', 'string', 'max:255'],
                'title' => ['required', 'string', 'max:255'],
                'phone' => 'required|numeric|digits:11',
                'objective' => ['required'],
                'github' => ['required'],
                'linkedin' => ['required'],
                'skills' => ['required'],
                'address' => ['required'],
                'institute1_name' => ['required'],
                'subject1' => ['required'],
                'cgpa1' => ['required'],
                'total_cgpa1' => ['required'],
                'project1_name' => ['required'],
                'project1_link' => ['required'],
                'project1_description' => ['required'],
                'languages' => ['required'],
                'photo' => 'required|mimes:jpeg,jpg,png',
            ];
            if($request->institute2_name){
                 $rules['institute2_name'] = 'required';
                 $rules['subject2'] = 'required';
                 $rules['cgpa2'] = 'required';
                 $rules['total_cgpa2'] = 'required';
            }
            if($request->project2_name){
                $rules['project2_name'] = 'required';
                $rules['project2_link'] = 'required';
                $rules['project2_description'] = 'required';
            }
            $request->validate($rules);

            $student = User::where('email', $request->email)->where('role', 2)->first();
            
            //check payment before Cv create 
            $checkPayment = StudentPayment::where('student_id', $student->id)->first();
            if(!$checkPayment){
                return redirect()->route('student_payment')->with('error','Please Pay before CV create');
            }
            
            $studentDetail = StudentDetail::where('student_id', $student->id)->first();
            // dd($studentDetail);
            $image = $request->file('photo');
            if($image) {
                $imageName = Str::uuid(). '.' .$image->getClientOriginalExtension();
                $image->move(public_path('uploads/student_photo'), $imageName);
                $image_upload_path = "uploads/student_photo/" . $imageName;
            }
            $studentDetail->image = $image_upload_path;
            $studentDetail->title = $request->title;
            $studentDetail->phone = $request->phone;
            $studentDetail->objective = $request->objective;
            $studentDetail->email = $request->email;
            $studentDetail->github = $request->github;
            $studentDetail->linkedin = $request->linkedin;
            $studentDetail->skills = $request->skills;
            $studentDetail->address = $request->address;
            $studentDetail->languages = $request->languages;
            $studentDetail->status = 1;
            $studentDetail->save();

            $project = new Project();
            $project->student_id = $student->id;
            $project->name = $request->project1_name;
            $project->description = $request->project1_description;
            $project->link = $request->project1_link;
            $project->status = 1;
            $project->save();

            if($request->project2_name){
                $project = new Project();
                $project->student_id = $student->id;
                $project->name = $request->project2_name;
                $project->description = $request->project2_description;
                $project->link = $request->project2_link;
                $project->status = 1;
                $project->save();
            }

            $education = new Education();
            $education->student_id = $student->id;
            $education->name = $request->institute1_name;
            $education->subject = $request->subject1;
            $education->cgpa = $request->cgpa1;
            $education->tgpa = $request->total_cgpa1;
            $education->status = 1;
            $education->save();

            if($request->institute2_name){
                $education = new Education();
                $education->student_id = $student->id;
                $education->name = $request->institute2_name;
                $education->subject = $request->subject2;
                $education->cgpa = $request->cgpa2;
                $education->tgpa = $request->total_cgpa2;
                $education->status = 1;
                $education->save();
            }

            return redirect()->route('student_login')->with('message','CV add successfully');
        }
        return view('student.student_cv');
    }

    public function studentLogout(){
        Auth::logout();
        return redirect()->route('student_login');
    }
}
