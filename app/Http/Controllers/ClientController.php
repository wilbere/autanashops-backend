<?php

namespace App\Http\Controllers;

use App\Client;
use App\Image;
use Illuminate\Http\Request;
use App\Http\Resources\ClientResource;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;


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
        return response()->json(['clients' => ClientResource::collection($this->client->get())]);

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

            return response()->json(['res' => false,'error' => $validator->errors()->first(),200]);

        } else {

            if ($request->file('image')) {

                $path = Storage::disk('public')->put('image', $request->file('image'));

                $image = new Image();
                $image->url = asset($path);

                $this->client->name = $request->name;
                $this->client->rif = $request->rif;
                $this->client->email = $request->email;
                $this->client->phone = $request->phone;
                $this->client->is_supplier = $request->is_supplier;
                $this->client->save();

                $this->client->image()->save($image);

                return response()->json([
                    'res' => true,
                    'client' => $this->client,
                    200
                ]);

            } else {

                $image = new Image();
                $image->url = 'https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png';

                $this->client->name = $request->name;
                $this->client->rif = $request->rif;
                $this->client->email = $request->email;
                $this->client->phone = $request->phone;
                $this->client->is_supplier = $request->is_supplier;
                $this->client->save();

                $this->client->image()->save($image);


                return response()->json(["res" => true, 'client' => $this->client,
                200]);

            }

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
        return response()->json(['client' => new ClientResource($client), 200]);
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
            "is_supplier" => "boolean",
        ]);

        if($validator->fails()){

            return response()->json(['res' => false,'error' => $validator->errors()->first(),200]);

        } else {

            if ($request->file('image')) {

                $path = Storage::disk('public')->put('image', $request->file('image'));
                $image = Image::find($client->image->id);

                Storage::delete($image->url);

                $image->url = asset($path);
                $image->save();

                $client->name = $request->name;
                $client->rif = $request->rif;
                $client->email = $request->email;
                $client->phone = $request->phone;
                $client->is_supplier = $request->is_supplier;
                $client->save();

                return response()->json([
                    'res' => true,
                    200
                ]);

            } else {

                $client->name = $request->name;
                $client->rif = $request->rif;
                $client->email = $request->email;
                $client->phone = $request->phone;
                $client->is_supplier = $request->is_supplier;
                $client->save();

                return response()->json(["res" => true,  200]);
            }
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
