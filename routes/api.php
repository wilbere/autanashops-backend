<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('/login', 'Api\AuthController@login')->name('api.login');
Route::post('/register', 'Api\AuthController@register')->name('api.register');


Route::middleware('auth:api')->group(function () {

    /**
     * User Module
     */
    Route::apiResource('/user', 'UserController');

    /**
     * Category Module
     */
    Route::apiResource('/category', 'CategoryController');

    /**
     * Tax Module
     */
    Route::apiResource('/tax', 'TaxController');

    /**
     * Brand Module
     */
    Route::apiResource('/brand', 'BrandController');


    /**
     * Currency Module
     */
    Route::apiResource('/currency', 'CurrencyController');


    /**
     * Unit Module
     */
    Route::apiResource('/unit', 'UnitController');


    /**
     * Warehouse Module
     */
    Route::apiResource('/warehouse', 'WarehouseController');

    /**
     * Account Module
     */
    Route::apiResource('/account', 'AccountController');
});
