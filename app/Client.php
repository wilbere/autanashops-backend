<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Client extends Model
{
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'type',
        'name',
        'rif',
        'email',
        'phone',
        'identity_card',
        'address',
        'city',
        'country'
    ];

    public function getSlugAttribute()
    {
        return str_pad($this->id, 8, "0", STR_PAD_LEFT);
    }

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
