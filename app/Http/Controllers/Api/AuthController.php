<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Hash;
use Illuminate\Http\Request;
use Str;
use Validator;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email'    => 'required|email',
            'password' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => $validator->messages()
            ]);
        }

        $user = User::where('email', $request->input('email'))->first();
        if ($user) {
            if (Hash::check($request->input('password'), $user->password)) {
                $newToken = Str::random(60);
                $user->update(['api_token' => $newToken]);
                $cook=setcookie('user', $newToken, time() + (86400 * 30), "/"); // 86400 = 1 day

                return response()->json([
                    'name'         => $user->name,
                    'access_token' => $newToken,
                    'time'         => time()
                ]);
            }

            return response()->json([
                'message' => 'Invalid password!'
            ]);
        }

        return response()->json([
            'message' => 'User not found!'
        ]);
    }
}