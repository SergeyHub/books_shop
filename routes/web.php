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
|
*/
//Route::get('/about', function () {
//    return view('about');
//});

Route::get('/', 'CategoryController@index');
Route::get('/categories', 'CategoryController@index');

Route::get('/categories/create', 'CategoryController@create')->name('category-create');
Route::post('/categories/store', 'CategoryController@store')->name('category-store');
Route::get('/categories/{id}', 'CategoryController@show')->name('category-show');

// Inset new book
Route::get('/products/create/{categoryId}', 'ProductsController@create')->name('product-create');
Route::post('/products/store', 'ProductsController@store')->name('product-store');

// The route to show the book
Route::get('/products/{id}', 'ProductsController@show')->name('product-show');

// The route to delete the book
Route::delete('/products/{id}', 'ProductsController@destroy')->name('product-destroy');
