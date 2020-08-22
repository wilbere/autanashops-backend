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
use Illuminate\Support\Facades\Validator;

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
                'user' => auth()->user(),
                'message' => 'Bienvenido al sistema'
            ], 200);

        } else {

            return response()->json([
                'res' => false,
                'message' => 'Tus credenciales no son validas'
            ], 200);

        }
    }

    public function register(Request $request)
    {
        $validator = Validator::make($request->all(),[
            "name" => 'required',
            "username" => 'required',
            "email" => "email|required|unique:users",
            "password" => "required",
            "confirm_password" => 'same:password'
        ]);

        if (!$validator->fails()) {

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
                'user' => $user,
                'message' => 'Usuario Registrado con exito'
            ], 200);

        } else {

            $errors = [
                'email' => $validator->errors()->first('email'),
                'name' => $validator->errors()->first('name'),
                'username' => $validator->errors()->first('username'),
                'password' => $validator->errors()->first('password'),
                'confirm_password' => $validator->errors()->first('confirm_password')
            ];

            return response()->json([
                'res' => false,
                'errors' => $errors
            ], 200);
        }

    }
}
