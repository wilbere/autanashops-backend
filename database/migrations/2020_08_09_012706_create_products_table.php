<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            
            $table->unsignedBigInteger('brand_id')->unsigned();

            $table->string('name');
            $table->string('cost');
            $table->string('price');
            $table->string('wholesale_price')->nullable();
            $table->string('wholesale_qty')->nullable();
            $table->string('warranty_days')->nullable();
            $table->string('barcode')->unique();
            $table->text('description')->nullable();
            $table->string('alert_qty');
            $table->string('weight');

            $table->softDeletes();
            $table->timestamps();

            $table->foreign('brand_id')->references('id')->on('brands');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
