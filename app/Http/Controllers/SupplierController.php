<?php

namespace App\Http\Controllers;

use App\Client as Supplier;
use Illuminate\Http\Request;
use App\Http\Resources\ClientResource as SupplierResource;
use Illuminate\Support\Facades\Validator;

class SupplierController extends Controller
{
    protected $supplier;

    public function __construct(Supplier $supplier)
    {
        $this->supplier = $supplier;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return supplierResource::collection($this->supplier->get());
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

            $this->supplier->name = $request->name;
            $this->supplier->rif = $request->rif;
            $this->supplier->email = $request->email;
            $this->supplier->phone = $request->phone;
            $this->supplier->is_supplier = true;
            $this->supplier->save();

            return response()->json(["Created Success",new SupplierResource($this->supplier), 200]);

        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Supplier  $supplier
     * @return \Illuminate\Http\Response
     */
    public function show(supplier $supplier)
    {
        return response()->json([new supplierResource($supplier), 200]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Supplier  $supplier
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Supplier $supplier)
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

            $supplier->name = $request->name;
            $supplier->rif = $request->rif;
            $supplier->email = $request->email;
            $supplier->phone = $request->phone;
            $supplier->is_supplier = true;
            $supplier->save();

            return response()->json(["Created Success",new SupplierResource($supplier), 200]);

        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Supplier  $supplier
     * @return \Illuminate\Http\Response
     */
    public function destroy(Supplier $supplier)
    {
        $supplier->delete();
        return response()->json(['Delete Success', 200]);
    }
}
