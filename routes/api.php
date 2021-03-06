<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\api\UserController;
use App\Http\Controllers\api\ContactController;

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

Route::post('/register', [UserController::class, 'create']);
Route::post('/login', [UserController::class, 'login']);

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::middleware('auth:api')->group(function () {
    Route::post('create', [ContactController::class, 'create']);
    Route::post('update/{id}', [ContactController::class, 'update']);
    Route::get('delete/{id}', [ContactController::class, 'delete']);
    Route::get('list', [ContactController::class, 'list']);
    Route::get('user/edit/',[UserController::class,'edit']);
    Route::post('user/update/',[UserController::class,'update']);
});
