<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'order_date',
    ];

    public function status()
    {
        return $this->moprhOne(Status::class, "statuable");
    }

    public function orderable()
    {
        return $this->morphTo();
    }

    public function products()
    {
        return $this->belongsToMany(Product::class)
                    ->using(OrderProduct::class)
                    ->withPivot([
                        'qty'
                    ]);
    }

}
