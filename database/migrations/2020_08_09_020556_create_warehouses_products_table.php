<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWarehousesProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('warehouses_products', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('warehouse_id')->unsigned();
            $table->unsignedBigInteger('product_id')->unsigned();

            $table->string('qty');

            $table->softDeletes();
            $table->timestamps();

            $table->foreign('warehouse_id')->references('id')->on('warehouses');

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
        Schema::dropIfExists('warehouses_products');
    }
}
