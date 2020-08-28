<?php

namespace App\Http\Controllers;

use App\Unit;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class UnitController extends Controller
{

    protected $unit;

    public function __construct(Unit $unit)
    {
        $this->unit = $unit;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(['units' => $this->unit->get(), 200]);
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
            'name' => 'required',
            'code' => 'required',
            'description' => 'required'
        ]);

        if ($validator->fails()) {

            return response()->json(['Error', $validator->errors()->all(),200]);

        } else {

            $this->unit->name = $request->name;
            $this->unit->code = $request->code;
            $this->unit->description = $request->description;
            $this->unit->save();

            return response()->json([
                'res' => true,
                200
            ]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Unit  $unit
     * @return \Illuminate\Http\Response
     */
    public function show(Unit $unit)
    {
        return response()->json([$unit, 200]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Unit  $unit
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Unit $unit)
    {
        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'code' => 'required',
            'description' => 'required'
        ]);

        if ($validator->fails()) {

            return response()->json([
                'res' => false,
                'error' => $validator->errors()->first(),
                200
            ]);

        } else {

            $unit->name = $request->name;
            $unit->code = $request->code;
            $unit->description = $request->description;
            $unit->save();

            return response()->json([
                'res' => true,
                200
            ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Unit  $unit
     * @return \Illuminate\Http\Response
     */
    public function destroy(Unit $unit)
    {
        $unit->delete();
        return response()->json(['Delete Success', 200]);
    }
}
