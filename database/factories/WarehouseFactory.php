<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Warehouse;
use Faker\Generator as Faker;

$factory->define(Warehouse::class, function (Faker $faker) {
    return [
        "name" => $faker->company,
        "phone" => $faker->phoneNumber,
        "email" => $faker->safeEmail,
        "address" => $faker->address,
        "user_id" => rand(1,10)
    ];
});
