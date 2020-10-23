<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Http\Requests\api\user\UserRegisterRequest;
use App\Http\Requests\api\user\UserLoginRequest;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;


class UserController extends Controller
{
    public function create(UserRegisterRequest $userRequest)
    {
        $user = User::create([
            'name' => $userRequest->post('name'),
            'password' => bcrypt($userRequest->post('password')),
            'email' => $userRequest->post('email'),
            'remember_token' => null
        ]);

        return response()->json([
            'status' => 'Done'
        ]);
    }

    public function login(Request $userRequest)
    {
        $credentials = $userRequest->only('email', 'password');

        if (!Auth::attempt($credentials)) {
            return response()->json(['message' => 'Invalid Credentials']);
        }

        $accessToken = auth()->user()->createToken('authToken')->accessToken;

        return response()->json([
            'token' => "bearer " . $accessToken
        ]);
    }
}
