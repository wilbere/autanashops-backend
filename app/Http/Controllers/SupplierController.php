<?php

namespace App\Http\Controllers;

use App\Client as Supplier;
use App\Image;
use Illuminate\Http\Request;
use App\Http\Resources\ClientResource as SupplierResource;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;

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
        return response()->json(['suppliers' => SupplierResource::collection($this->supplier->where("is_supplier", true)->get())]);
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

                $this->supplier->name = $request->name;
                $this->supplier->rif = $request->rif;
                $this->supplier->email = $request->email;
                $this->supplier->phone = $request->phone;
                $this->supplier->is_supplier = true;
                $this->supplier->save();

                $this->supplier->image()->save($image);

                return response()->json([
                    'res' => true,
                    'supplier' => $this->supplier,
                    200
                ]);

            } else {

                $image = new Image();
                $image->url = 'https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png';

                $this->supplier->name = $request->name;
                $this->supplier->rif = $request->rif;
                $this->supplier->email = $request->email;
                $this->supplier->phone = $request->phone;
                $this->supplier->is_supplier = true;
                $this->supplier->save();

                $this->supplier->image()->save($image);


                return response()->json(["res" => true, 'supplier' => $this->supplier,
                200]);

            }

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

            return response()->json(['res' => false,'error' => $validator->errors()->first(),200]);

        } else {

            if ($request->file('image')) {

                $path = Storage::disk('public')->put('image', $request->file('image'));
                $image = Image::find($supplier->image->id);

                Storage::delete($image->url);

                $image->url = asset($path);
                $image->save();

                $supplier->name = $request->name;
                $supplier->rif = $request->rif;
                $supplier->email = $request->email;
                $supplier->phone = $request->phone;
                $supplier->is_supplier = true;
                $supplier->save();

                return response()->json([
                    'res' => true,
                    200
                ]);

            } else {

                $supplier->name = $request->name;
                $supplier->rif = $request->rif;
                $supplier->email = $request->email;
                $supplier->phone = $request->phone;
                $supplier->is_supplier = true;
                $supplier->save();

                return response()->json(["res" => true,  200]);
            }
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
