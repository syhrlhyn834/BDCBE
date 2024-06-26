<?php

use Illuminate\Support\Facades\Route;

//group route with prefix "admin"
Route::prefix('admin')->group(function () {

    //route login
    Route::post('/login', [App\Http\Controllers\Api\Admin\LoginController::class, 'index']);

    //group route with middleware "auth"
    Route::group(['middleware' => 'auth:api'], function() {

        //data user
        Route::get('/user', [App\Http\Controllers\Api\Admin\LoginController::class, 'getUser']);

        //refresh token JWT
        Route::get('/refresh', [App\Http\Controllers\Api\Admin\LoginController::class, 'refreshToken']);

        //logout
        Route::post('/logout', [App\Http\Controllers\Api\Admin\LoginController::class, 'logout']);

        //Category
        Route::apiResource('/categories', App\Http\Controllers\Api\Admin\CategoryController::class);

        //Blogs
        Route::apiResource('/blogs', App\Http\Controllers\Api\Admin\BlogController::class);

        //Sliders
        Route::apiResource('/sliders', App\Http\Controllers\Api\Admin\SliderController::class);

        //Users
        Route::apiResource('/users', App\Http\Controllers\Api\Admin\UserController::class);

         //footer
         Route::apiResource('/footers', App\Http\Controllers\Api\Admin\FooterController::class);

         //header
         Route::apiResource('/headers', App\Http\Controllers\Api\Admin\HeaderController::class);

         //sosmed
         Route::apiResource('/sosmeds', App\Http\Controllers\Api\Admin\SosmedController::class);

        //dashboard
        Route::get('/dashboard', [App\Http\Controllers\Api\Admin\DashboardController::class, 'index']);


    });

});
//group route with prefix "web"
Route::prefix('web')->group(function () {
//index categories
Route::get('/categories', [App\Http\Controllers\Api\Web\CategoryController::class, 'index']);

//show category
Route::get('/categories/{slug}', [App\Http\Controllers\Api\Web\CategoryController::class, 'show']);

//categories sidebar
Route::get('/categorySidebar', [App\Http\Controllers\Api\Web\CategoryController::class, 'categorySidebar']);

//index blogs
Route::get('/blogs', [App\Http\Controllers\Api\Web\BlogController::class, 'index']);

//show blogs
Route::get('/blogs/{slug}', [App\Http\Controllers\Api\Web\BlogController::class, 'show']);

//blogs homepage
Route::get('/blogHomepage', [App\Http\Controllers\Api\Web\BlogController::class, 'blogHomepage']);

//store image
Route::post('/blogs/storeImage', [App\Http\Controllers\Api\Web\BlogController::class, 'storeImageBlog']);

//index sliders
Route::get('/sliders', [App\Http\Controllers\Api\Web\SliderController::class, 'index']);

//index headers
Route::get('/headers', [App\Http\Controllers\Api\Web\HeaderController::class, 'index']);

//index footers
Route::get('/footers', [App\Http\Controllers\Api\Web\FooterController::class, 'index']);

//index sosmeds
Route::get('/sosmeds', [App\Http\Controllers\Api\Web\SosmedController::class, 'index']);


});
