<?php
 
namespace App\Http\Controllers;
 
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
 
class UserLoginController extends Controller
{
 public function index(Request $request){


 
//  $username = $request->username;
//  $password = $request->password;

//  print_r($request);
 
 $users = DB::table('employees')->where('username',"=","6000001")->first();
 
 if($users){
        return response()->json($users, 200);
 }
 
 
}
 
 // public function login(Request $request)
 // {
 // $login = $request->validated();
 // return response($this->userRepo->login($login), 200);
 // }
 
}