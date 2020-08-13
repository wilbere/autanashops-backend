<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id')->comment('ID de la tabla de usuarios.');

            $table->string('name')->comment('Nombre Completo del usuario.');
            $table->string('username')->comment('Usuario personalizado.');
            $table->string('email')->unique()->comment('Email, debe ser unico');
            $table->timestamp('email_verified_at')->nullable()->comment('Campo para verificar el email.');
            $table->string('password')->comment('Campo de la contraseña.');

            $table->rememberToken()->comment('Campo para que el cliente recuerde la sesión.');

            $table->softDeletes()->comment('Campo por defecto para indicar que un  usuario fue borrado.');
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
        Schema::dropIfExists('users');
    }
}
