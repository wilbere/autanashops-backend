<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Unit;
use Faker\Generator as Faker;

$factory->define(Unit::class, function (Faker $faker) {
    return [
        "name" => $faker->word,
        "code" => $faker->lexify('????'),
        "description" => $faker->sentence
    ];
});
