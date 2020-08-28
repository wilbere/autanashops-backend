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
    Route::apiResource('/users', 'UserController');
    Route::put('/users/change-password/{user}', 'UserController@changePassword');
    /**
     * Category Module
     */
    Route::apiResource('/categories', 'CategoryController');

    /**
     * Tax Module
     */
    Route::apiResource('/taxes', 'TaxController');

    /**
     * Brand Module
     */
    Route::apiResource('/brands', 'BrandController');


    /**
     * Currency Module
     */
    Route::apiResource('/currencies', 'CurrencyController');
    Route::get('/currencies/activate/{currency}', 'CurrencyController@activatedCurrency')->name('activated.score');


    /**
     * Unit Module
     */
    Route::apiResource('/units', 'UnitController');


    /**
     * Warehouse Module
     */
    Route::get('/warehouses/attendants', 'WarehouseController@attendants');
    Route::apiResource('/warehouses', 'WarehouseController');

    /**
     * Account Module
     */
    Route::apiResource('/account', 'AccountController');
    Route::post('/account/{user}', 'AccountController@store')->name('account.store');

    /**
     * Client Module
     */
    Route::apiResource('/clients', 'ClientController');

    /**
     * Supplier Module
     */
    Route::apiResource('/suppliers', 'SupplierController');

    /**
     * Product Module
     */
    Route::apiResource('/products', 'ProductController');

    /**
     * Scores Module
     */
    Route::apiResource('/scores', 'ScoreController');
    Route::get('/scores/activate/{score}', 'ScoreController@activatedScore')->name('activated.score');


    /**
     * Expense Module
     */
    Route::apiResource('/expenses', 'ExpenseController');

});
