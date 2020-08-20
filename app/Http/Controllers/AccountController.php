<?php

namespace App\Http\Controllers;

use App\Account;
use App\User;
use Auth;
use Illuminate\Http\Request;
use App\Http\Resources\UserResource;
use App\Http\Resources\AccountResource;
use App\Http\Requests\AccountRequest;
use Illuminate\Support\Facades\Validator;

class AccountController extends Controller
{

    protected $account;

    public function __construct(Account $account)
    {
        $this->account = $account;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json([new AccountResource($this->account), 200]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AccountRequest $request, User $user)
    {

        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'rif' => 'required|max:14',
            'email' => 'required|email',
            'phone' => 'required|numeric',
            'address' => 'required',
            'city' => 'required',
            'country' => 'required'

        ]);

        if ($validator->fails()) {

            return response()->json(['Error', $validator->errors()->all(),200]);

        } else {

            $this->account->name = $request->name;
            $this->account->rif = $request->rif;
            $this->account->email = $request->email;
            $this->account->phone = $request->phone;
            $this->account->address = $request->address;
            $this->account->city = $request->city;
            $this->account->country = $request->country;

            $user->account()->save($this->account);

            return response()->json(['Created Success', new UserResource($user), 200]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Account  $account
     * @return \Illuminate\Http\Response
     */
    public function show(Account $account)
    {
        return response()->json([new AccountResource($account), 200]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Account  $account
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Account $account)
    {
        // $user = Auth::user();

        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'rif' => 'required|max:14',
            'email' => 'required|email',
            'phone' => 'required|numeric',
            'address' => 'required',
            'city' => 'required',
            'country' => 'required'

        ]);

        if ($validator->fails()) {

            return response()->json(['Error', $validator->errors()->all(),200]);

        } else {

            $account->name = $request->name;
            $account->rif = $request->rif;
            $account->email = $request->email;
            $account->phone = $request->phone;
            $account->address = $request->address;
            $account->city = $request->city;
            $account->country = $request->country;
            $account->save();

            // $user->account()->save($account);

            return response()->json(['Updated Success', new AccountResource($account), 200]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Account  $account
     * @return \Illuminate\Http\Response
     */
    public function destroy(Account $account)
    {
        $account->delete();
        return response()->json(['Delete Success', 200]);

    }
}
