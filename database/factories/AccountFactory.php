<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Account;
use Faker\Generator as Faker;

$factory->define(Account::class, function (Faker $faker) {
    return [

        "accountable_type" => "App\User",
        "accountable_id" => $faker->numberBetween(1, 11),

        "name" => $faker->company,
        "rif" => "J-".$faker->unique()->randomNumber($nbDigits = NULL, $strict = false),
        "email" => $faker->unique()->safeEmail,
        "phone" => $faker->phoneNumber,
        "address" => $faker->address,
        "city" => $faker->city,
        "country" => $faker->country,
    ];
});
