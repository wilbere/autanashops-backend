<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUnitsProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('units_products', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('unit_id')->unsigned();
            $table->unsignedBigInteger('product_id')->unsigned();


            $table->softDeletes();
            $table->timestamps();

            $table->foreign('unit_id')->references('id')->on('units');

            $table->foreign('product_id')->references('id')->on('products');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('units_products');
    }
}
