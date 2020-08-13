<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Account extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'rif', 'email', 'phone', 'address', 'city', 'country'
    ];


    public function accountable()
    {
        return $this->morphTo();
    }

    public function image()
    {
        return $this->morphOne(Image::class, "imageable");
    }
}
