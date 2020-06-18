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
Route::get('edit/users', 'UserManageController@index')->name('user_manage');
Route::get('edit/admins', 'AdminManageController@index')->name('admin_manage');
Route::get('edit/roles', 'RoleManageController@index')->name('role_manage');
Route::get('edit/locations', 'LocationManageController@index')->name('location_manage');


