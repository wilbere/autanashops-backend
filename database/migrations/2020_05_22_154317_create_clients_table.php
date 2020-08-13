<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateClientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('clients', function (Blueprint $table) {
            $table->bigIncrements('id');

            // $table->bigInteger('account_id')->unsigned();

            $table->string('name');
            $table->string('email');
            $table->string('phone');
            $table->string('rif')->nullable()->unique();
            $table->boolean('supplier')->comment('This field will determine if the customer is a supplier or not.');


            $table->softDeletes();
            $table->timestamps();

            // $table->foreign('user_id')->references('id')->on('users')
            //     ->onDelete('cascade')
            //     ->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('clients');
    }
}
