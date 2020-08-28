<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use App\Http\Resources\UserResource;
use App\Http\Resources\UserCollection;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{

    protected $user;

    public function __construct(User $user)
    {
        $this->user = $user;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = $this->user->get();
        return UserResource::collection($users);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            "name" => "required",
            "username" => "required",
            "email" => "required|email",
            "password" => "required"
        ]);

        if (!$validator->fails()) {

            $user = User::create([
                "name" => $request->name,
                "username" => $request->username,
                "email" => $request->email,
                "password" => Hash::make($request->password)
            ]);

            $image = new Image();
            if($request->url_img) {
                $image->url = $request->url_img;
            } else {
                $image->url = "https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png";
            }

            $user->image()->save($image);

            return response()->json([
                'res' => true,
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

    /**
     * Display the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        return response()->json(['user' => new UserResource($user), 200]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $validator = Validator::make($request->all(),[
            "name" => "required",
            "username" => "required",
            "email" => "required|email",
        ]);

        if ($validator->fails()){

            return response()->json([
                'res' => true,
                'error' => $validator->errors()->first(),
                200
            ]);

        } else {

            $user->name = $request->name;
            $user->username = $request->username;
            $user->email = $request->email;
            $user->save();

            return response()->json([
                'res' => true,
                200
            ]);

        }


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $user->delete();
        return response()->json(['Delete Success', 200]);
    }

    public function changePassword(Request $request, User $user)
    {
        $validator = Validator::make($request->all(), [
            "old_password" => "required",
            "password" => "required",
            "confirm_password" => 'same:password'
        ]);

        if ($validator->fails()){

            return response()->json([
                'res' => false,
                'error' => $validator->errors()->first(),
                200
            ]);

        } else {

            if(Hash::check($request->old_password,  auth()->user()->password)){
                $user->password = Hash::make($request->password);
                $user->save();

                return response()->json([
                    'res' => true,
                    200
                ]);
            } else {

                return response()->json([
                    'res' => false,
                    'error' => 'Incorrect password'
                ]);

            }

        }

    }
}
