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
use Illuminate\Support\Facades\Storage;


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

        // $this->product->type = $request->type;
        $this->product->name = $request->name;
        $this->product->barcode = $request->barcode;
        $this->product->cost = $request->cost;
        $this->product->price = $request->price;
        $this->product->weight = $request->weight;
        $this->product->alert_qty = $request->alert_qty;
        $this->product->wholesale_price = $request->wholesale_price;
        $this->product->wholesale_qty = $request->wholesale_qty;
        $this->product->warranty_days = $request->warranty_days;
        $this->product->description = $request->description;

        if ($request->brand) {
            $this->product->brand()->associate($request->brand);
        }

        $this->product->save();

        $this->product->units()->save($unit);
        // $this->product->syncTags($request->tags);
        $this->product->category()->save($category);

        return response()->json(['res' => true, 'product' => new ProductResource($this->product),200]);

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
        $product->weight = $request->weight;
        $product->alert_qty = $request->alert_qty;
        $product->wholesale_price = $request->wholesale_price;
        $product->wholesale_qty = $request->wholesale_qty;
        $product->warranty_days = $request->warranty_days;
        $product->description = $request->description;

        $product->tax()->associate($request->tax);
        $product->brand()->associate($request->brand);
        $product->save();

        $product->units()->save($unit);
        $product->syncTags($request->tags);
        $product->category()->save($category);

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
        // $product->delete();
        // return response()->json(["Delete success", 200]);
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function updateImage(Request $request, Product $product)
    {
        if ($request->file('image')) {

            $path = Storage::disk('public')->put('image/product', $request->file('image'));

            $image = new Image();
            $image->url = asset($path);


            $product->image()->save($image);

            return response()->json([
                'res' => true,
                200
            ]);
        }
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function removeImage(Request $request, Image $image)
    {
        $image->delete();
        return response()->json(["res" => true, 200]);
    }

}
