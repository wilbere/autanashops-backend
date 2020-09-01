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
        return response()->json(['scores' => $this->score->get(), 200]);
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
            "account_no" => "required|numeric|unique:scores",
            "name" => "required",
            "balance" => "required|numeric",
            "default" => "required|boolean",
            "note" => "string",
        ]);

        if($validator->fails()){
            return response()->json(['res' => false,"error" => $validator->errors()->first(), 200]);
        } else {

            if($request->default == true) {
                $this->desactivatedScore();
            }

            $this->score->account_no = $request->account_no;
            $this->score->name = $request->name;
            $this->score->balance = $request->balance;
            $this->score->default = $request->default;
            $this->score->note = $request->note;
            $this->score->save();

            return response()->json(["res" => true, 200]);

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
            "account_no" => "required|numeric",
            "name" => "required",
            "balance" => "required|numeric",
            "default" => "required|boolean",
            "note" => "string",
        ]);

        if($validator->fails()){
            return response()->json(['res' => false,"error" => $validator->errors()->first(), 200]);
        } else {

            if($request->default == true) {
                $this->desactivatedScore();
            }

            $score->account_no = $request->account_no;
            $score->name = $request->name;
            $score->balance = $request->balance;
            $score->default = $request->default;
            $score->note = $request->note;
            $score->save();


            return response()->json(["res" => true, 200]);

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

    public function desactivatedScore()
    {
        $scores = $this->score->where("default", true)->get();

        foreach ($scores as $scr) {
            $scr->default = false;
            $scr->save();
        }
        return response()->json(['score activated', 200]);

    }
}
