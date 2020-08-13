<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Currency;
use Faker\Generator as Faker;

$factory->define(Currency::class, function (Faker $faker) {
    return [
        "name" => "Dólares",
        "symbol" => "USD",
        "value" => "1",
        "default" => 1,
    ];
});
