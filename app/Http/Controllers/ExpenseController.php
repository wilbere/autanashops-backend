<?php

namespace App\Http\Controllers;

use App\Expense;
use App\Score;
use App\Category;
use Illuminate\Http\Request;
use App\Http\Resources\ExpenseResource;
use Illuminate\Support\Facades\Validator;


class ExpenseController extends Controller
{

    protected $expense;

    public function __construct(Expense $expense)
    {
        $this->expense = $expense;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json([$this->expense->get(), 200]);
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
            "category" => "required",
            "warehouse" => "required",
            "quantity" => "required|numeric",
            "score" => "required",
            "note" => "string",
        ]);

        if($validator->fails()){
            return response()->json(["Error", $validator->errors()->all(), 200]);
        } else {

            $score = Score::find($request->score);
            $category = Category::find($request->category);

            $score->balance = $score->balance - $request->quantity;
            $score->save();

            $this->expense->quantity = $request->quantity;
            $this->expense->note = $request->note;

            $this->expense->score()->associate($request->score);
            $this->expense->warehouse()->associate($request->warehouse);
            $this->expense->save();

            $this->expense->category()->save($category);

            return response()->json(['Created Success', new ExpenseResource($this->expense),200]);

        }

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Expense  $expense
     * @return \Illuminate\Http\Response
     */
    public function show(Expense $expense)
    {
        return response()->json([new ExpenseResource($expense),200]);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Expense  $expense
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Expense $expense)
    {

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Expense  $expense
     * @return \Illuminate\Http\Response
     */
    public function destroy(Expense $expense)
    {
        $score->delete();
        return response()->json(["Delete Success",  200]);
    }
}
