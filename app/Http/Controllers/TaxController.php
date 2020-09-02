<?php

namespace App\Http\Controllers;

use App\Tax;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class TaxController extends Controller
{

    protected $tax;

    public function __construct(Tax $tax)
    {
        $this->tax = $tax;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(['taxes' => $this->tax->get(), 200]);
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
            "rate" => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'res' => false,
                'error' => $validator->errors()->first(),
                200
            ]);
        } else {

            $this->tax->name = $request->name;
            $this->tax->rate = $request->rate;
            $this->tax->save();

            return response()->json([
                'res' => true,
                200
            ]);
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Tax  $tax
     * @return \Illuminate\Http\Response
     */
    public function show(Tax $tax)
    {
        return response()->json([$tax, 200]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Tax  $tax
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Tax $tax)
    {
        $validator = Validator::make($request->all(), [
            "name" => 'required',
            "rate" => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'res' => false,
                'error' => $validator->errors()->first(),
                200
            ]);
        } else {

            $tax->name = $request->name;
            $tax->rate = $request->rate;
            $tax->save();

            return response()->json([
                'res' => true,
                200
            ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Tax  $tax
     * @return \Illuminate\Http\Response
     */
    public function destroy(Tax $tax)
    {
        $tax->delete();
        return response()->json(['res' => true, 200]);
    }
}
