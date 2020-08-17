<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Order extends Model
{
    use SoftDeletes;

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
