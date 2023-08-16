<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Str;
use App\Models\Admission;
use App\Models\Scholarship;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class OrganizationController extends Controller
{
    public function organizationLogin(Request $request){
        if($request->isMethod('post')){
            $request->validate([
                'email' => ['required', 'string', 'email'],
                'password' => ['required'],
            ]);

            $remember = false;
            if(isset($request->remember)){
                $remember = true;
            }
            if (Auth::attempt(['email' => $request->email, 'role' => 3, 'password' => $request->password], $remember)) {
                $request->session()->regenerate();
                return redirect()->route('organization_dashboard');
            }
            return back()->withErrors([
                'email' => 'Invalid Username or Password',
            ]);
        }
        // dd("Hasan");
        return view('organization.login');
    }

    public function organizationRegistration(Request $request){
        if($request->isMethod('post')){
            $request->validate([
                'name' => ['required', 'string', 'max:255'],
                'username' => ['required', 'string', 'max:255'],
                'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
                'password' => ['required', 'min:6', 'confirmed'],
            ]);
            // dd($request->all());
            $user = User::create([
                'name' => $request->name,
                'username' => $request->username,
                'email' => $request->email,
                'role' => 3,
                'status' => 1,
                'password' => Hash::make($request->password),
            ]);

            return redirect()->route('organization_login')->with('message', 'Organization add successfully.');
        }

        return view('organization.registration');
    }

    public function organizationLogout(){
        Auth::logout();
        return redirect()->route('organization_login');
    }

    public function admissionNotice(){
        $admissions = Admission::where(['organization_id'=>Auth::user()->id])->get();
        return view('organization.admission.all', compact('admissions'));
    }

    public function addAdmission(Request $request){
        if($request->isMethod('post')){
            $rules = [
                'title' => 'required',
                'description' => 'required',
                'image' => 'required|mimes:jpeg,jpg,png',
            ];
            $request->validate($rules);
            // dd($request->all());
            $image = $request->file('image');
            if($image) {
                $imageName = Str::uuid(). '.' .$image->getClientOriginalExtension();
                $image->move(public_path('uploads/admission_photo'), $imageName);
                $image_upload_path = "uploads/admission_photo/" . $imageName;
            }
            $admission = new Admission();
            $admission->title = $request->title;
            $admission->organization_id = Auth::user()->id;
            $admission->image = $image_upload_path;
            $admission->description = $request->description;
            $admission->status = 1;
            $admission->save();

            return redirect()->route('admission.all')->with('message','Admission add successfully');
        }
        return view('organization.admission.add');
    }

    public function editAdmission($id, Request $request){
        if($request->isMethod('post')){
            $rules = [
                'title' => 'required',
                'description' => 'required',
                'image' => 'nullable|mimes:jpeg,jpg,png',
            ];
            $request->validate($rules);
            $admission = Admission::where('id', $id)->first();
            $image = $request->file('image');
            if($image) {
                if(file_exists(public_path($admission->image))){
                    unlink(public_path($admission->image));
                }
                $imageName = Str::uuid(). '.' .$image->getClientOriginalExtension();
                $image->move(public_path('uploads/admission_photo'), $imageName);
                $image_upload_path = "uploads/admission_photo/" . $imageName;
            }
            
            $admission->title = $request->title;
            if($image) {
                $admission->image = $image_upload_path;
            }
            $admission->description = $request->description;
            $admission->save();

            return redirect()->route('admission.all')->with('message','Admission edit successfully');
        }
        $admission = Admission::where('id', $id)->first();
        return view('organization.admission.edit', compact('admission'));
    }

    public function scholarshipNotice(){
        $scholarships = Scholarship::where(['organization_id'=>Auth::user()->id])->get();
        return view('organization.scholarship.all', compact('scholarships'));
    }

    public function addScholarship(Request $request){
        if($request->isMethod('post')){
            $rules = [
                'title' => 'required',
                'description' => 'required',
                'image' => 'required|mimes:jpeg,jpg,png',
            ];
            $request->validate($rules);
            // dd($request->all());
            $image = $request->file('image');
            if($image) {
                $imageName = Str::uuid(). '.' .$image->getClientOriginalExtension();
                $image->move(public_path('uploads/scholarship_photo'), $imageName);
                $image_upload_path = "uploads/scholarship_photo/" . $imageName;
            }
            $scholarship = new Scholarship();
            $scholarship->title = $request->title;
            $scholarship->organization_id = Auth::user()->id;
            $scholarship->image = $image_upload_path;
            $scholarship->description = $request->description;
            $scholarship->status = 1;
            $scholarship->save();

            return redirect()->route('scholarship.all')->with('message','Scholarship add successfully');
        }
        return view('organization.scholarship.add');
    }

    public function editScholarship($id, Request $request){
        if($request->isMethod('post')){
            $rules = [
                'title' => 'required',
                'description' => 'required',
                'image' => 'nullable|mimes:jpeg,jpg,png',
            ];
            $request->validate($rules);
            $scholarship = Scholarship::where('id', $id)->first();
            $image = $request->file('image');
            if($image) {
                if(file_exists(public_path($scholarship->image))){
                    unlink(public_path($scholarship->image));
                }
                $imageName = Str::uuid(). '.' .$image->getClientOriginalExtension();
                $image->move(public_path('uploads/scholarship_photo'), $imageName);
                $image_upload_path = "uploads/scholarship_photo/" . $imageName;
            }
            
            $scholarship->title = $request->title;
            if($image) {
                $scholarship->image = $image_upload_path;
            }
            $scholarship->description = $request->description;
            $scholarship->save();

            return redirect()->route('scholarship.all')->with('message','Scholarship edit successfully');
        }
        $scholarship = Scholarship::where('id', $id)->first();
        return view('organization.scholarship.edit', compact('scholarship'));
    }
}
