<?php

namespace App;

use Illuminate\Database\Eloquent\Relations\Pivot;

class WarehouseProduct extends Pivot
{
    protected $fillable = [
        'qty',
    ];
}
