<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'rif', 'email', 'phone', 'is_supplier'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function image()
    {
        return $this->morphOne(Image::class, "imageable");
    }

    public function account()
    {
        return $this->morphOne(Account::class, "accountable");
    }

    public function orders()
    {
        return $this->morphMany(Order::class, "orderable");
    }
}
