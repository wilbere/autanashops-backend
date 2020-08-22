<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductPurchaseTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_purchase', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('product_id')->unsigned();
            $table->unsignedBigInteger('purchase_id')->unsigned();

            $table->string('qty');
            $table->string('total');

            $table->softDeletes();
            $table->timestamps();

            $table->foreign('product_id')->references('id')->on('products');

            $table->foreign('purchase_id')->references('id')->on('purchases');
        });

        Schema::table('purchases', function (Blueprint $table) {
            $table->string('total_cost');
            $table->string('status');
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product_purchase');
    }
}
