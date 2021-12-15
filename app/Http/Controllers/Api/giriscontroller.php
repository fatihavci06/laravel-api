<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Cookie;
class giriscontroller extends Controller
{
    //
    public function index(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);
    
        $user = User::where('email', $request->email)->first();
    
        if (! $user || ! Hash::check($request->password, $user->password)) {
            return response([
                'message' => ['The provided credentials are incorrect.']
            ], 500);
        }
        $userToken = $user->createToken('api-token')->plainTextToken;
        $cookie_name = "user";
        $cookie_value = $userToken;
        $cook=setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/"); // 86400 = 1 day

        
    
        return response(['token' => $userToken], 200);
    }
    public function loginview()
    {
        return view('giris');
    }

}
