<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ExpenseResource extends JsonResource
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
            "date" => $this->created_at,
            "warehouse" => $this->warehouse,
            "category" => $this->category,
            "quantity" => $this->quantity,
            "note" => $this->note,
        ];
    }
}
