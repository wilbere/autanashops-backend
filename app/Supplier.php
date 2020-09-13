<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'rif',
        'email',
        'phone',
        'address',
        'city',
        'country'
    ];

    public function getSlugAttribute()
    {
        return str_pad($this->id, 8, "0", STR_PAD_LEFT);
    }

    public function getGetTypeAttribute()
    {
        return $this->type == 0 ? 'Persona Natural' : 'Persona Jurídica';
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
