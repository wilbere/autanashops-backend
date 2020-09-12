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
            "code" => $this->get_id,
            "id" => $this->id,
            "type" => $this->type,
            "name" => $this->name,
            "barcode" => $this->barcode,
            "cost" => $this->cost,
            "price" => $this->price,
            "weight" => $this->weight,
            "wholesale_price" => $this->wholesale_price,
            "wholesale_qty" => $this->wholesale_qty,
            "warranty_days" => $this->warranty_days,
            "description" => $this->description,
            "images" => ImageResource::collection($this->images),
            "tax" => $this->tax,
            "category" => $this->category,
            "brand" => $this->brand,
            "units" => $this->units,
            "tags" => $this->tags,
            'warehouse' => $this->warehouses
        ];
    }
}
