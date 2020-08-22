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
            $table->unsignedBigInteger('tax_id')->unsigned();

            $table->string('name');
            $table->string('cost');
            $table->string('price');
            $table->string('barcode')->unique();
            $table->text('description')->nullable();
            $table->string('alert_qty');

            $table->softDeletes();
            $table->timestamps();


            $table->foreign('brand_id')->references('id')->on('brands');

            $table->foreign('tax_id')->references('id')->on('taxes');

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
