<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Purchase extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'discount', 'note', 'total_cost'
    ];

    public function products()
    {
        return $this->belongsToMany(Product::class);
    }

    public function status()
    {
        return $this->morphMany(Status::class, 'statuable');
    }
}
