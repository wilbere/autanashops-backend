<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Warehouse extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'phone', 'address',
    ];

    public function products()
    {
        return $this->belongsToMany(Product::class)
                    ->using(WarehouseProduct::class)
                    ->withPivot([
                        'qty'
                    ]);
    }
}
