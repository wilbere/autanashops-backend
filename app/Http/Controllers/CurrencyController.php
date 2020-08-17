<?php

namespace App\Http\Controllers;

use App\Currency;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CurrencyController extends Controller
{

    protected $currency;

    public function __construct(Currency $currency)
    {
        $this->currency = $currency;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json([$this->currency->get(), 200]);
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
            "symbol" => 'required',
            "value" => 'required',
            "default" => 'required|boolean'
        ]);

        if ($validator->fails()) {
            return response()->json(['Error', $validator->errors()->all(),200]);
        } else {

            $this->currency->name = $request->name;
            $this->currency->symbol = $request->symbol;
            $this->currency->value = $request->value;
            $this->currency->default = $request->default;
            $this->currency->save();

            return response()->json(['Created Success', $this->currency, 200]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Currency  $currency
     * @return \Illuminate\Http\Response
     */
    public function show(Currency $currency)
    {
        return response()->json([$currency, 200]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Currency  $currency
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Currency $currency)
    {
        $validator = Validator::make($request->all(), [
            "name" => 'required',
            "symbol" => 'required',
            "value" => 'required',
            "default" => 'required|boolean'
        ]);

        if ($validator->fails()) {
            return response()->json(['Error', $validator->errors()->all(),200]);
        } else {

            $currency->name = $request->name;
            $currency->symbol = $request->symbol;
            $currency->value = $request->value;
            $currency->default = $request->default;
            $currency->save();

            return response()->json(['Updated Success', $currency, 200]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Currency  $currency
     * @return \Illuminate\Http\Response
     */
    public function destroy(Currency $currency)
    {
        $currency->delete();
        return response()->json(['Delete Success', 200]);
    }
}
