<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Status extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'status', 'description', 'date'
    ];


    public function statuable()
    {
        return $this->morphTo();
    }
}
