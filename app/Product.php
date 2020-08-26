<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use Spatie\Tags\HasTags;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use HasTags, SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'cost', 'price', 'barcode', 'description', 'alert_qty'
    ];

    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }

    public function category()
    {
        return $this->morphOne(Category::class, 'categorizable');
    }

    public function units()
    {
        return $this->belongsToMany(Unit::class, 'units_products');
    }

    public function warehouses()
    {
        return $this->belongsToMany(Warehouse::class, 'warehouses_products')
                    ->withPivot('qty');
    }

    public function purchases()
    {
        return $this->belongsToMany(Purchase::class);
    }

    public function tax()
    {
        return $this->belongsTo(Tax::class);
    }

    public function images()
    {
        return $this->morphMany(Image::class, "imageable");
    }

    public function orders()
    {
        return $this->belongsToMany(Order::class)
                    ->using(OrderProduct::class)
                    ->withPivot([
                        'qty'
                    ]);
    }
}
