<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Image;
use Faker\Generator as Faker;

$factory->define(Image::class, function (Faker $faker) {
    return [
        "url" => "https://picsum.photos/200",
        "imageable_type" => "App\User",
        "imageable_id" => $faker->numberBetween(1,10),
    ];
});
