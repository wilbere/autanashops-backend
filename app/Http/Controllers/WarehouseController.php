<?php

namespace App\Http\Controllers;

use App\Warehouse;
use App\User;
use App\Http\Resources\WarehouseResource;
use App\Http\Resources\AttendantResource;
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
        return  response()->json(['warehouses' => WarehouseResource::collection($this->warehouse->get())]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $user = User::find($request->attendant);

        $validator = Validator::make($request->all(), [
            "name" => 'required',
            "email" => 'required|email',
            "phone" => 'required|numeric',
            "address" => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'res' => false,
                'error' => $validator->errors()->first(),
                200
            ]);
        } else {

            $this->warehouse->name = $request->name;
            $this->warehouse->email = $request->email;
            $this->warehouse->phone = $request->phone;
            $this->warehouse->address = $request->address;
            $this->warehouse->user()->associate($user);
            $this->warehouse->save();

            return response()->json([
                'res' => true,
                200
            ]);;
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
        $user = User::find($request->attendant);

        $validator = Validator::make($request->all(), [
            "name" => 'required',
            "email" => 'required|email',
            "phone" => 'required|numeric',
            "address" => 'required'
            ]);

            if ($validator->fails()) {
                return response()->json([
                    'res' => false,
                    'error' => $validator->errors()->first(),
                    200
                ]);
            } else {

            $warehouse->name = $request->name;
            $warehouse->email = $request->email;
            $warehouse->phone = $request->phone;
            $warehouse->address = $request->address;
            $warehouse->user()->associate($user);
            $warehouse->save();

            return response()->json([
                'res' => true,
                200
            ]);
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
        // return $warehouse->products->count();
        if($warehouse->products->count() > 0 ) {
            return response()->json(['res' => false, 'error' => 'No puedes eliminar un almacén que tenga productos en su stock', 200]);
        } else {

            // $warehouse->user()->dissociate();
            $warehouse->save();
            $warehouse->delete();

            return response()->json(['res' => true, 200]);

        }
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function attendants()
    {
        $attendants = User::get();
        return response()->json(['attendants' => AttendantResource::collection($attendants)]);
    }


    /**
     * Update the specified resource from storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \App\Warehouse $warehouse
     * @return \Illuminate\Http\Response
     */
    public function updateAtendant(Request $request, Warehouse $warehouse)
    {

    }
}
