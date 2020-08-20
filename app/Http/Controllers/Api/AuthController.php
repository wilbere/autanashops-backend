<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\UserRegisterRequest;
use App\Http\Requests\UserLoginRequest;
use Laravel\Passport\Client;
use App\User;
use App\Image;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{

    public function login(UserLoginRequest $request)
    {
        $credentials = [
            'email' => $request->email,
            'password' => $request->password
        ];

        if (auth()->attempt($credentials))
        {
            $token = auth()->user()->createToken('Autanashops')->accessToken;

            return response()->json([
                'res' => true,
                'token' => $token,
                'message' => 'Bienvenido al sistema'
            ], 200);

        } else {

            return response()->json([
                'res' => false,
                'message' => 'Tus credenciales no son validas'
            ], 200);

        }
    }

    public function register(UserRegisterRequest $request)
    {
        if ($validated = $request->validated()) {

            $user = User::create([
                "name" => $request->name,
                "username" => $request->username,
                "email" => $request->email,
                "password" => Hash::make($request->password)
            ]);

            $image = new Image();
            $image->url = "https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png";

            $user->image()->save($image);

            $token = $user->createToken('Autanashops')->accessToken;

            return response()->json([
                'res' => true,
                'token' => $token,
                'message' => 'Usuario Registrado con exito'
            ], 200);

        } else {

            $errors = $validated->errors();

            $data = [
                "name" => $errors-first('name'),
                "username" => $errors-first('username'),
                "email" => $errors-first('email'),
                "password" => $errors-first('password'),
            ];

            return response()->json([
                'res' => true,
                'err' => $data,
            ], 422);

        }

    }
}
