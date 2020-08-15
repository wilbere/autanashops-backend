<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\UserRegisterRequest;

class AuthController extends Controller
{
    public function login()
    {

    }

    public function register(UserRegisterRequest $request)
    {
        return response()->json($request->all());
    }
}
