<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tax extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'rate',
    ];

    public function products()
    {
        return $this->belongsToMany(Product::class);
    }
}
