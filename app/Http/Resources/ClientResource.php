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
            'name' => $this->name,
            'phone' => $this->phone,
            'email' => $this->email,
            'rif' => $this->rif,
            'image' => new ImageResource($this->image),
            'company' => new AccountResource($this->account)
            // 'last_update' => $this->update_at->diff()
        ];
    }
}
