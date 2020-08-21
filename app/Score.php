<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Score extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'acount_no', 'name', 'balance', 'default','note'
    ];

    public function expenses()
    {
        return $this->hasMany(Expense::class);
    }
}
