<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Middleware\ApiToken;
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

Route::middleware('api-basic2')->get('/user-basic', function (Request $request) {
    return $request->user();
});
Route::post('upload','App\Http\Controllers\Api\UploadController@upload');
Route::middleware('auth:sanctum')->get('/users','App\Http\Controllers\apicontroller@index')->name('users');
Route::get('/categories/custom1','App\Http\Controllers\Api\CategoryController@custom1');
Route::get('/products/custom1','App\Http\Controllers\Api\ProductController@custom1');
Route::middleware('auth:sanctum')->get('/products/custom2','App\Http\Controllers\Api\ProductController@custom2');
Route::get('/users/custom3','App\Http\Controllers\Api\UserController@custom3');
Route::get('/products/listwithcategories','App\Http\Controllers\Api\ProductController@listWithCategories');
Route::get('/categories/report1','App\Http\Controllers\Api\CategoryController@report1');
Route::get('/users/custom1','App\Http\Controllers\Api\UserController@custom1');
Route::get('/users/custom2','App\Http\Controllers\Api\UserController@custom2');
Route::get('/users/custom3','App\Http\Controllers\Api\UserController@custom3');
Route::post('/login','App\Http\Controllers\Api\AuthController@login');
//Route::resource('/products', 'App\Http\Controllers\ProductController');
//Route::apiResource('/products', 'App\Http\Controllers\Api\ProductController');
//Route::apiResource('/users', 'App\Http\Controllers\Api\ProductController');
//Route::apiResource('/categories', 'App\Http\Controllers\Api\CategoryController');

Route::middleware('api-token')->group(function () {

    Route::get('/auth/token', function (Request $request) {
        $user = $request->user();

        return response()->json([
            'name'         => $user->name,
            'access_token' => $user->api_token,
            'time'         => time()
        ]);
    });

});
Route::get('/kullanicilarcek','App\Http\Controllers\Api\UserController@index3');
Route::middleware('throttle:5|10,1')->group(function () {
    Route::get('/throttle-guest', function () {
        echo "Throttle guest test...";
    });

    Route::get('/throttle-auth', function (Request $request) {
        echo "Throttle auth test...";
    })->middleware('api-token2');
});
Route::get('/kullanicilar','App\Http\Controllers\Api\UserController@index2')->middleware(['api-token2','throttle:10,4']);
Route::middleware(['api-token'])->group(function () {
   Route::apiResources([
    'products'=>'App\Http\Controllers\Api\ProductController',
    'users'=>'App\Http\Controllers\Api\UserController',
    'categories'=>'App\Http\Controllers\Api\CategoryController'
]);

});