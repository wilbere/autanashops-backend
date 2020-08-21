<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Warehouse extends Model
{

    use SoftDeletes;

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

    public function expenses()
    {
        return $this->hasMany(Expense::class);
    }

}
