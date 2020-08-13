<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Unit extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'code', 'description',
    ];

    public function products()
    {
        return $this->belongsToMany(Product::class);
    }
}
