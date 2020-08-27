<?php

namespace App\Http\Controllers;

use App\Brand;
use App\Image;
use App\Http\Resources\BrandResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;

class BrandController extends Controller
{
    protected $brand;

    public function __construct(Brand $brand)
    {
        $this->brand = $brand;
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json([
            'brands' => BrandResource::collection($this->brand->get())
        ]);
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
            'name' => 'required'
        ]);

        if ($validator->fails()) {

            return response()->json([
                'res' => false,
                'Error' => $validator->errors()->first(),
                200
            ]);

        } else {

            $this->brand->name = $request->name;
            $this->brand->save();

            return response()->json([
                'res' => true,
                200
            ]);
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Brand  $brand
     * @return \Illuminate\Http\Response
     */
    public function show(Brand $brand)
    {
        return response()->json([$brand, 200]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Brand  $brand
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Brand $brand)
    {
        $validator = Validator::make($request->all(),[
            'name' => 'required',
        ]);

        if ($validator->fails()) {

            return response()->json([
                'res' => false,
                'Error' => $validator->errors()->first(),
                200
            ]);

        }

        // if ($request->input('image')) {
        //     $path = Storage::disk('public')->put('/img', $request->input('image'));
        //     $image = Image::find($request->image_id);
        //     $image->url = asset($path);
        //     $image->save();
        // }


        $brand->name = $request->name;
        $brand->save();

        return response()->json([
            'res' => true,
            200
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Brand  $brand
     * @return \Illuminate\Http\Response
     */
    public function destroy(Brand $brand)
    {
        $brand->delete();
        return response()->json(['Delete Success', 200]);
    }
}
