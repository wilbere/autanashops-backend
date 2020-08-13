<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQuotationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('quotations', function (Blueprint $table) {
            $table->string('quotation_number',10)->primary();

            $table->date('date');
            $table->text('seller_note');
            $table->text('sale_note');
            $table->string('subtotal');
            $table->string('total_tax');
            $table->string('total');
            $table->date('due_date');
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
        Schema::dropIfExists('quotations');
    }
}
