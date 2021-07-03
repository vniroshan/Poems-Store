<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\LikeController;
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

//Public routes
Route::post('/register',[AuthController::class,'register']);
Route::post('/login',[AuthController::class,'login']);

//Protected Routes

Route::group(['middleware' => ['auth:sanctum']],function (){

    //user
    Route::get('/user',[AuthController::class,'user']);
    Route::put('/user',[AuthController::class,'update']);
    Route::post('/logout',[AuthController::class,'logout']);

    //Post
    Route::get('/posts',[PostController::class,'index']); // All posts
    Route::post('/posts',[PostController::class,'store']); // Create Post
    Route::get('/posts/{id}',[PostController::class,'show']); // Get Single Post
    Route::put('/posts/{id}',[PostController::class,'update']); //update post
    Route::delete('/posts/{id}',[PostController::class,'destroy']); //Delete Post

    //Comment
    Route::get('/posts/{id}/comments', [CommentController::class, 'index']); //all comments of a post
    Route::post('/posts/{id}/comments', [CommentController::class, 'store']); // Create comment on a post
    Route::put('/comments/{id}', [CommentController::class, 'update']); //update a comment
    Route::delete('/comments/{id}', [CommentController::class, 'destroy']); //delete a comment

    //Like
    Route::post('/posts/{id}/likes',[LikeController::class,'likeOrUnlike']);//like or dislike
});
