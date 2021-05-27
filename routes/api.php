<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TenantController;
use App\Http\Controllers\BookingController;
use App\Http\Controllers\HouseController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\TenancyController;
use App\Http\Controllers\MessageController;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/login', [TenantController::class, 'login']);
Route::post('/payments/receipt', [PaymentController::class, 'receipt']);
Route::post('/houses/unbook/{id}', [BookingController::class, 'unsetHouseBooked']);

Route::resource('tenants', TenantController::class);
Route::resource('houses', HouseController::class);
Route::resource('tenancies', TenancyController::class);
Route::resource('bookings', BookingController::class);
Route::resource('payments', PaymentController::class);
Route::resource('messages', MessageController::class);
