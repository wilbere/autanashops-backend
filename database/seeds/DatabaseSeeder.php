<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            "name" => "Wilber Galindez",
            "username" => "wilbere",
            "email" => "hi@wilber.dev",
            "password" => Hash::make('password')
        ]);

        $this->call(UsersTableSeeder::class);
        $this->call(AccountSeeder::class);
        $this->call(BrandSeeder::class);
        $this->call(CategorySeeder::class);
        $this->call(CurrencySeeder::class);
        $this->call(TaxSeeder::class);
        $this->call(UnitSeeder::class);
        $this->call(WarehouseSeeder::class);
        $this->call(ImageSeeder::class);
        $this->call(StatusSeeder::class);

    }
}
