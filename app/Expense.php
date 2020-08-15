<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Expense extends Model
{
    use SoftDeletes;

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
