<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use Spatie\Tags\HasTags;

class Product extends Model
{
    use HasTags;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'cost', 'price', 'barcode', 'description'
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
        return $this->belongsToMany(Unit::class);
    }

    public function warehouses()
    {
        return $this->belongsToMany(Warehouse::class)
                    ->using(WarehouseProduct::class)
                    ->withPivot([
                        'qty'
                    ]);
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
