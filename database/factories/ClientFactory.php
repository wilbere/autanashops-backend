<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Client;
use Faker\Generator as Faker;

$factory->define(Client::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'phone' => $faker->tollFreePhoneNumber,
        'rif' => 'J-'.$faker->unique()->randomNumber($nbDigits = NULL, $strict = false),
    ];
});
