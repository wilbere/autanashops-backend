<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Quotation extends Model
{
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
