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
        return response()->json(['currencies' => $this->currency->get(), 200]);
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
            "default" => 'boolean'
        ]);

        if ($validator->fails()) {

            return response()->json([
                'res' => false,
                'error' => $validator->errors()->first(),
                200]);

        } else {


            $this->currency->name = $request->name;
            $this->currency->symbol = $request->symbol;
            $this->currency->value = $request->value;
            $this->currency->default = $request->default;
            $currency = $this->currency->save();

            if($request->default == true) {
                $this->activatedCurrency($this->currency);
            }

            return response()->json([
                'res' => true,
                200
            ]);
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

            return response()->json([
                'res' => false,
                'error' => $validator->errors()->first(),
                200]);

        } else {

            $currency->name = $request->name;
            $currency->symbol = $request->symbol;
            $currency->value = $request->value;
            $currency->default = $request->default;
            $currency->save();

            if($request->default == true) {
                $this->activatedCurrency($currency);
            }

            return response()->json([
                'res' => true,
                200
            ]);
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
        $count = $this->currency->count();
        if($count == 1) {

            return response()->json(['res' => false, 'error' => 'No se puede eliminar la última moneda.', 200]);

        } else {

            if($currency->default){
                return response()->json(['res' => false, 'error' => 'No se puede eliminar la moneda por defecto.', 200]);
            } else {

                $currency->delete();
                return response()->json(['res' => true]);

            }

        }
    }


    /**
     * Activated currency default.
     *
     * @param  \App\Currency  $currency
     * @return \Illuminate\Http\Response
     */
    public function activatedCurrency(Currency $currency)
    {
        $currencies = $this->currency->where("default", true)->get();

        foreach ($currencies as $cur) {
            $cur->default = false;
            $cur->save();
        }

        $currency->default = true;
        $currency->save();

        return response()->json(['res' => true]);

    }
}
