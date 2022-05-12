<?php

use App\Http\Controllers\DashboardPostController;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;


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
    return view('home', [
        "title" => "Deskripsi",
        "active" => "home"
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        "name" => "Aldi",
        'active' => 'about',
        "email" => "reynaldirio09@gmail.com",
        "gambar" => "540880.jpg"
    ]);
});


Route::get('/blog', [PostController::class, 'index']);

// halaman single post
Route::get('/blog/{blogmini:slug}', [PostController::class, 'show']);

Route::get('/categories', function () {
    return view('categories', [
        'title' => 'Blog Categories',
        'active' => 'categories',
        'categories' => Category::all()
    ]);
});

Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);
Route::post('/logout', [LoginController::class, 'logout']);

Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store']);

Route::get('/dashboard', function() {
    return view('dashboard.index');
})->middleware('auth');

// untuk menangani CRUD dengan ringkas
Route::resource('/dashboard/blog', DashboardPostController::class)->middleware('auth');


// Route::get('/categories/{category:slug}', function(Category $category){
//     return view('blog', [
//         'title' => "Blog By Category: $category->name",
//         'active' => 'categories',
//         'blog' => $category->blog->load('category', 'author')
//     ]);
// });

// Route::get('/authors/{author:username}', function (User $author) {
//     return view('blog', [
//         'title' => "Blog By Author: $author->name",
//         'active' => 'blog',
//         'blog' => $author->blog->load('category', 'author')
//     ]);
// });
