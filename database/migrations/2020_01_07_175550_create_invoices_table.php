<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInvoicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('invoices', function (Blueprint $table) {
            // $table->bigIncrements('id');
            $table->string('invoice_number',10)->primary();

            $table->date('date');
            $table->text('seller_note');
            $table->text('sale_note');
            $table->string('subtotal');
            $table->string('total_tax');
            $table->string('total');
            $table->string('discount');
            $table->string('shipping_cost');

            $table->softDeletes();
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('invoices');
    }
}
