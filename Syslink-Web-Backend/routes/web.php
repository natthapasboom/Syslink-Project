<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

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

Route::get('/', function () {
    return view('login');
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/login', 'Auth\LoginController@index')->name('login');
Route::get('edit/employees', 'EmployeeController@index')->name('employee_manage');
Route::get('edit/users', 'UserController@index')->name('user_manage');
Route::get('edit/roles', 'RoleController@index')->name('role_manage');
Route::get('edit/locations', 'LocationController@index')->name('location_manage');

Route::post('edit/locations/create', 'LocationController@store');
Route::put('/edit/locations/update/{id}', 'LocationController@update');
Route::delete('/edit/locations/delete/{id}', 'LocationController@delete');

Route::post('edit/employees/create', 'EmployeeController@store');
Route::put('/edit/employees/update/{id}', 'EmployeeController@update');
Route::delete('/edit/employees/delete/{id}', 'EmployeeController@delete');

Route::post('edit/roles/create', 'RoleController@store');
Route::put('/edit/roles/update/{id}', 'RoleController@update');
Route::delete('/edit/roles/delete/{id}', 'RoleController@delete');

Route::post('edit/users/create', 'UserController@store');
Route::put('/edit/users/update/{id}', 'UserController@update');
Route::delete('/edit/users/delete/{id}', 'UserController@delete');

