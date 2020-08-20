<?php

namespace App\Http\Controllers;

use App\Client;
use Illuminate\Http\Request;
use App\Http\Resources\ClientResource;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Validator;


class ClientController extends Controller
{
    protected $client;

    public function __construct(Client $client)
    {
        $this->client = $client;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return ClientResource::collection($this->client->get());
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
            "rif" => "required|max:14",
            "email" => "required|email",
            "phone" => "required|numeric",
        ]);

        if($validator->fails()){

            return response()->json(['Error', $validator->errors()->all(),200]);

        } else {

            $this->client->name = $request->name;
            $this->client->rif = $request->rif;
            $this->client->email = $request->email;
            $this->client->phone = $request->phone;
            $this->client->is_supplier = $request->is_supplier;
            $this->client->save();

            return response()->json(["Created Success",new ClientResource($this->client), 200]);

        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function show(Client $client)
    {
        return response()->json([new ClientResource($client), 200]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Client $client)
    {
        $validator = Validator::make($request->all(),[
            "name" => "required",
            "rif" => "required|max:14",
            "email" => "required|email",
            "phone" => "required|numeric",
        ]);

        if($validator->fails()){

            return response()->json(['Error', $validator->errors()->all(),200]);

        } else {

            $client->name = $request->name;
            $client->rif = $request->rif;
            $client->email = $request->email;
            $client->phone = $request->phone;
            $client->is_supplier = $request->is_supplier;
            $client->save();

            return response()->json(["Created Success",new ClientResource($client), 200]);

        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function destroy(Client $client)
    {
        $client->delete();
        return response()->json(['Delete Success', 200]);
    }
}
