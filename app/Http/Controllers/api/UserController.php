<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Http\Requests\api\user\UserEditRequest;
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

    public function login(UserLoginRequest $userRequest)
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

    public function edit()
    {
        return response()->json(User::find(Auth::id()));
    }

    public function update(UserEditRequest $userRequest)
    {
        $userPassword = "";
        if ($userRequest['password'] === null || $userRequest['password'] === "")
            $userPassword = User::find(Auth::id())['password'];
        else
            $userPassword = bcrypt($userRequest->post('password'));

        User::find(Auth::id())->update([
            'name' => $userRequest->post('name'),
            'email' => $userRequest->post('email'),
            'password' => $userPassword
        ]);

        return response()->json([
            'status' => 'Done',
            'data' => User::find(Auth::id())
        ]);
    }
}
