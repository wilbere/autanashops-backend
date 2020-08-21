<?php

namespace App\Http\Controllers;

use App\Score;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ScoreController extends Controller
{

    protected $score;

    public function __construct(Score $score)
    {
        $this->score = $score;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json([$this->score->get(), 200]);
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
            "account_no" => "required|numeric|min:20|unique:scores",
            "name" => "required",
            "balance" => "required|numeric",
            "default" => "required|boolean",
            "note" => "string",
        ]);

        if($validator->fails()){
            return response()->json(["Error", $validator->errors()->all(), 200]);
        } else {

            $this->score->account_no = $request->account_no;
            $this->score->name = $request->name;
            $this->score->balance = $request->balance;
            $this->score->default = $request->default;
            $this->score->note = $request->note;
            $this->score->save();

            return response()->json(["Created Success", $this->score, 200]);

        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Score  $score
     * @return \Illuminate\Http\Response
     */
    public function show(Score $score)
    {
        return response()->json([$score, 200]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Score  $score
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Score $score)
    {
        $validator = Validator::make($request->all(),[
            "account_no" => "required|numeric|min:20|unique:scores",
            "name" => "required",
            "balance" => "required|numeric",
            "default" => "required|boolean",
            "note" => "string",
        ]);

        if($validator->fails()){
            return response()->json(["Error", $validator->errors()->all(), 200]);
        } else {

            $this->score->account_no = $request->account_no;
            $this->score->name = $request->name;
            $this->score->balance = $request->balance;
            $this->score->default = $request->default;
            $this->score->note = $request->note;
            $this->score->save();

            return response()->json(["Created Success", $this->score, 200]);

        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Score  $score
     * @return \Illuminate\Http\Response
     */
    public function destroy(Score $score)
    {
        $score->delete();
        return response()->json(["Delete Success",  200]);

    }
}
