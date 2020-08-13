<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Invoices extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'date', 'invoice_number', 'subtotal','total_tax', 'total'
    ];

    /**
     * The primary key associated with the table.
     *
     * @var string
     */
    protected $primaryKey = 'invoice_number';

    public function status()
    {
        return $this->moprhOne(Status::class, "statuable");
    }

    public function orders()
    {
        return $this->hasMany(Order::class);
    }

}
