<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Quotation extends Model
{
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'date', 'quotation_number','due_date', 'subtotal','total_tax', 'total'
    ];

    /**
     * The primary key associated with the table.
     *
     * @var string
     */
    protected $primaryKey = 'quotation_number';

    public function status()
    {
        return $this->moprhOne(Status::class, "statuable");
    }

    public function orders()
    {
        return $this->morphMany(Order::class, 'orederable');
    }
}
