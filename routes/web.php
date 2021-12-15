<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|c
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/secured', function () {
    return 'You ara authenticeted';
})->middleware('auth');

Auth::routes();
Route::post('/auth/login','App\Http\Controllers\Api\AuthController@login')->name('auth.post');
Route::get('/auth/login','App\Http\Controllers\Api\giriscontroller@loginview');
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::middleware('auth:sanctum')->get('/upload_form','App\Http\Controllers\HomeController@upload_form')->name('upload_form');
Route::get('/download/{filename}','App\Http\Controllers\HomeController@download')->name('download');