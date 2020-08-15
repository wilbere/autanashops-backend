<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Expense extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'quantity', 'note'
    ];

    public function category()
    {
        return $this->morphOne(Category::class, 'categorizable');
    }

    public function score()
    {
        return $this->belongsTo(Score::class);
    }
}
