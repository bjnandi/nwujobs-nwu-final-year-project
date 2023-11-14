<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Company;
use App\Job;

class CompanyController extends Controller
{
  public function __construct(){
        $this->middleware(['employer','verified'],['except'=>array('index','company')]);
    }


    public function index($id, Company $company){
    	$jobs = Job::where('user_id',$id)->get();
    	return view('company.index',compact('company'));
    }

    public function company(){
      $companies = Company::latest()->paginate(8);
      return view('company.company',compact('companies'));
    }
    


    public function create(){
    	return view('company.create');
    }

    public function store(){
   		$user_id = auth()->user()->id;
   		
      Company::where('user_id',$user_id)->update([
        'address'=>request('address'),
   			'phone'=>request('phone'),
   			'website'=>request('website'),
   			'slogan'=>request('slogan'),
   			'description'=>request('description')
   		]);
   		return redirect()->back()->with('message','Company Sucessfully Updated!');

   }

    public function coverPhoto(Request $request){
        $user_id = auth()->user()->id;
        if($request->hasfile('cover_photo')){

            $file = $request->file('cover_photo');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/coverphoto/',$filename);
            Company::where('user_id',$user_id)->update([
                'cover_photo'=>$filename
            ]);
        }
        return redirect()->back()->with('message','Company coverphoto Sucessfully Updated!');

    }
    public function companyLogo(Request $request){
        $user_id = auth()->user()->id;
        if($request->hasfile('company_logo')){

            $file = $request->file('company_logo');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/logo/',$filename);
            Company::where('user_id',$user_id)->update([
                'logo'=>$filename
            ]);
        }
        return redirect()->back()->with('message','Company logo Sucessfully Updated!');

    }

        

}
