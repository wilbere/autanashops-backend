<?php

namespace App\Http\Controllers;

use App\Product;
use App\Tax;
use App\Brand;
use App\Category;
use App\Unit;
use App\Image;
use Illuminate\Http\Request;
use App\Http\Resources\ProductResource;
use App\Http\Requests\ProductRequest;


class ProductController extends Controller
{
    protected $product;

    public function __construct(Product $product)
    {
        $this->product = $product;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(['products' => ProductResource::collection($this->product->get())]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  use App\Http\Requests\ProductRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {
        $category = Category::find($request->category);
        $unit = Unit::find($request->unit);

        $this->product->type = $request->type;
        $this->product->name = $request->name;
        $this->product->barcode = $request->barcode;
        $this->product->cost = $request->cost;
        $this->product->price = $request->price;
        $this->product->alert_qty = $request->alert_qty;
        $this->product->description = $request->description;

        $this->product->tax()->associate($request->tax);
        $this->product->brand()->associate($request->brand);
        $this->product->save();

        $this->product->units()->save($unit);
        $this->product->syncTags($request->tags);
        $this->product->category()->save($category);

        if ($request->image) {

                $img = new Image();
                $img->url = $request->image;
                $this->product->images()->save($img);

        } else {

            $img = new Image();

            $img->url ="https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png";

            $this->product->images()->save($img);

        }

        return response()->json(['Created Success', new ProductResource($this->product),200]);

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        return response()->json([new ProductResource($product),200]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        $category = Category::find($request->category);
        $unit = Unit::find($request->unit);

        $product->type = $request->type;
        $product->name = $request->name;
        $product->barcode = $request->barcode;
        $product->cost = $request->cost;
        $product->price = $request->price;
        $product->alert_qty = $request->alert_qty;
        $product->description = $request->description;

        $product->tax()->associate($request->tax);
        $product->brand()->associate($request->brand);
        $product->save();

        $product->units()->save($unit);
        $product->syncTags($request->tags);
        $product->category()->save($category);

        if ($request->image) {

                $img = new Image();
                $img->url = $request->image;
                $product->images()->save($img);

        } else {

            $img = new Image();

            $img->url ="https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png";

            $product->images()->save($img);

        }

        return response()->json(['Updated Success', new ProductResource($product),200]);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $product->delete();
        return response()->json(["Delete success", 200]);
    }
}
