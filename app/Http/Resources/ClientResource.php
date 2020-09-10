<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\AccountResource;
use App\Http\Resources\ImageResource;

class ClientResource extends JsonResource
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
            'id' => $this->id,
            'slug' => $this->slug,
            'name' => $this->name,
            'phone' => $this->phone,
            'email' => $this->email,
            'rif' => $this->rif,
            'identity_card' => $this->identity_card,
            'type' => $this->type,
            'address' => $this->address,
            'city' => $this->city,
            'country' => $this->country,
            'image' => new ImageResource($this->image),
        ];
    }
}
