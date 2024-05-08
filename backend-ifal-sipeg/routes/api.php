<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\PegawaiControllerApi;
use App\Http\Controllers\UserControllerApi;
use App\Http\Controllers\JabatanControllerApi;
use App\Http\Controllers\GajiControllerApi;
use App\Http\Controllers\PenilaianKerjaControllerApi;
use App\Http\Controllers\CutiControllerApi;
use App\Http\Controllers\AbsensiControllerApi;
use App\Http\Controllers\CommentControllerApi;
use App\Http\Controllers\ConnectControllerApi;
use App\Http\Controllers\LikeControllerApi;
use App\Http\Controllers\PostControllerApi;
use App\Http\Controllers\UnlikeControllerApi;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::resource('user', UserControllerApi::class);
Route::resource('pegawai', PegawaiControllerApi::class);
Route::resource('jabatan', JabatanControllerApi::class);
Route::resource('gaji', GajiControllerApi::class);
Route::resource('cuti', CutiControllerApi::class);
Route::resource('absensi', AbsensiControllerApi::class);
Route::resource('penilaiankerja', PenilaianKerjaControllerApi::class);

Route::resource('connect', ConnectControllerApi::class);
Route::resource('post', PostControllerApi::class);
Route::resource('comment', CommentControllerApi::class);
Route::resource('like', LikeControllerApi::class);
Route::resource('unlike', UnlikeControllerApi::class);


Route::get('showSearch', [UserControllerApi::class, "showSearch"]);
