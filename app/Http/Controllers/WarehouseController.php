<?php

namespace App\Http\Controllers;

use App\Warehouse;
use App\Http\Resources\WarehouseResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class WarehouseController extends Controller
{
    protected $warehouse;

    public function __construct(Warehouse $warehouse)
    {
        $this->warehouse = $warehouse;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json([ WarehouseResource::collection($this->warehouse->get()), 200]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            "name" => 'required',
            "email" => 'required|email',
            "phone" => 'required|numeric',
            "address" => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['Error', $validator->errors()->all(),200]);
        } else {

            $this->warehouse->name = $request->name;
            $this->warehouse->email = $request->email;
            $this->warehouse->phone = $request->phone;
            $this->warehouse->address = $request->address;
            $this->warehouse->save();

            return response()->json(['Created Success', $this->warehouse, 200]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Warehouse  $warehouse
     * @return \Illuminate\Http\Response
     */
    public function show(Warehouse $warehouse)
    {
        return response()->json([$warehouse, 200]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Warehouse  $warehouse
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Warehouse $warehouse)
    {
        $validator = Validator::make($request->all(), [
            "name" => 'required',
            "email" => 'required|email',
            "phone" => 'required|numeric',
            "address" => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['Error', $validator->errors()->all(),200]);
        } else {

            $this->warehouse->name = $request->name;
            $this->warehouse->email = $request->email;
            $this->warehouse->phone = $request->phone;
            $this->warehouse->address = $request->address;
            $this->warehouse->save();

            return response()->json(['Created Success', $this->warehouse, 200]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Warehouse  $warehouse
     * @return \Illuminate\Http\Response
     */
    public function destroy(Warehouse $warehouse)
    {
        $warehouse->delete();
        return response()->json(['Delete Success', 200]);
    }
}
