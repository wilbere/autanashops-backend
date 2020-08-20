<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\ImageResource;
use App\Http\Resources\WarehouseResource;

class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            "name" => $this->name,
            "barcode" => $this->barcode,
            "cost" => $this->cost,
            "price" => $this->price,
            "description" => $this->description,
            "images" => new ImageResource($this->images),
            "tax" => $this->tax,
            "category" => $this->category,
            "brand" => $this->brand,
            "units" => $this->units,
            "warehouses" => new WarehouseResource($this->warehouses),
            "tags" => $this->tags
        ];
    }
}
