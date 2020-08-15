<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\UserRegisterRequest;
use App\Http\Requests\UserLoginRequest;
use Laravel\Passport\Client;
use App\User;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function login(UserLoginRequest $request)
    {
        $token = Client::where('password_client', 1)->first();

        $data =  [
            'grant_type' => 'password',
            'client_id' => $token->id,
            'client_secret' => $token->secret,
            'username' => $request->email,
            'password' => $request->password,
            'scope' => '*',
        ];

        $tokenRequest = Request::create('/oauth/token', 'post', $data);

        return app()->handle($tokenRequest);
    }

    public function register(UserRegisterRequest $request)
    {
        $user = User::create([
            "name" => $request->name,
            "username" => $request->username,
            "email" => $request->email,
            "password" => Hash::make($request->password)
        ]);

        $login = [
            "email" => $user->email,
            "password" => $user->password
        ];

        $loginAttemp = Request::create(route('api.login'),'post', $login);

        // dd($loginAttemp);
        return $loginAttemp;
    }
}
