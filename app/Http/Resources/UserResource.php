<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id2'=>$this->id,
            'name2'=>$this->name,
            'first_name2'=>$this->first_name,
            'last_name2'=>$this->last_name,
            'is_admin'=>$this->when($this->id==1,1)
        ];
    }
}
