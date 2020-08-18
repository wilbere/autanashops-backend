<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
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
            'name' => $this->name,
            'username' => $this->username,
            'email' => $this->email,
            'image' => $this->image->url,
            'id_company' => $this->account->id,
            'name_company' => $this->account->name,
            'rif' => $this->account->rif,
            'email_company' => $this->account->email,
            'phone_company' => $this->account->phone,
            'address_company' => $this->account->address,
            'city' => $this->account->city,
            'country' => $this->account->country,
            // 'last_update' => $this->update_at->diff()
        ];
    }
}
