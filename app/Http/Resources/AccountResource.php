<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\ImageResource;


class AccountResource extends JsonResource
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
            'id_company' => $this->id,
            'image_company' => new ImageResource($this->image),
            'name_company' => $this->name,
            'rif' => $this->rif,
            'email_company' => $this->email,
            'phone_company' => $this->phone,
            'address_company' => $this->address,
            'city' => $this->city,
            'country' => $this->country,
            // 'last_update' => $this->update_at->diff()
        ];
    }
}
