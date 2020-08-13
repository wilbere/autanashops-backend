<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePurchasesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('purchases', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('warehouse_id')->unsigned();
            $table->unsignedBigInteger('client_id')->unsigned();
            $table->unsignedBigInteger('tax_id')->unsigned();

            $table->string('shipping_cost');
            $table->string('discount');
            $table->text('note');

            $table->softDeletes();
            $table->timestamps();

            $table->foreign('warehouse_id')->references('id')->on('warehouses');
            $table->foreign('client_id')->references('id')->on('clients');
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
        Schema::dropIfExists('purchases');
    }
}
