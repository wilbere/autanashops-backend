<?php

namespace App\Http\Resources;

use App\Http\Resources\ProductResource;
use Illuminate\Http\Resources\Json\JsonResource;

class WarehouseResource extends JsonResource
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
            "id" => $this->id,
            "name" => $this->name,
            "address" => $this->address,
            "phone" => $this->phone,
            "email" => $this->email,
            "products" => ProductResource::collection($this->products)
        ];
    }
}
