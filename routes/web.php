<?php

use App\Http\Controllers\Dokter\JadwalPeriksaController;
use App\Http\Controllers\Dokter\DokterController; // Jangan lupa import ini
use App\Http\Controllers\Dokter\ObatController;
use App\Http\Controllers\Dokter\PeriksaController;
use App\Http\Controllers\Pasien\JanjiPeriksaController;
use App\Http\Controllers\Pasien\PasienDashboardController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', function () {
    return redirect()->route('login');
});
Route::middleware(['auth', 'verified'])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');

    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

// pasien
// Route::middleware(['auth', 'role:pasien'])->prefix('pasien')->name('pasien.')->group(function () {
//     Route::get('/dashboard', function () {
//         return view('pasien.dashboard'); // pastikan kamu buat view ini dulu
//     })->name('dashboard');

//     Route::get('/janji-periksa', [JanjiPeriksaController::class, 'index'])->name('janji.index');
//     Route::post('/janji-periksa', [JanjiPeriksaController::class, 'store'])->name('janji.store');
// });
Route::middleware(['auth', 'role:pasien'])->prefix('pasien')->name('pasien.')->group(function () {
    Route::get('/dashboard', function () {
        return view('pasien.dashboard');
    })->name('dashboard');

    // Route::get('/daftar-poli', [PasienController::class, 'index'])->name('daftar-poli');

    Route::get('/janji-periksa', [JanjiPeriksaController::class, 'index'])->name('janji.index');
    Route::post('/janji-periksa', [JanjiPeriksaController::class, 'store'])->name('janji.store');
    Route::get('/riwayat-periksa', [JanjiPeriksaController::class, 'riwayat'])->name('riwayat.index');


    Route::get('dashboard', [PasienDashboardController::class, 'index'])->name('dashboard');
});


// Group route khusus role dokter
Route::middleware(['auth', 'role:dokter'])->prefix('dokter')->group(function () {
    // Route::get('/dashboard', function () {
    //     return view('dokter.dashboard');
    // })->name('dokter.dashboard');
    Route::get('/dashboard', [JadwalPeriksaController::class, 'dashboard'])->name('dokter.dashboard');


    // Jadwal Periksa
    Route::prefix('jadwal-periksa')->group(function () {
        Route::get('/', [JadwalPeriksaController::class, 'index'])->name('dokter.jadwal-periksa.index');
        Route::post('/', [JadwalPeriksaController::class, 'store'])->name('dokter.jadwal-periksa.store');
        Route::patch('/{id}', [JadwalPeriksaController::class, 'update'])->name('dokter.jadwal-periksa.update');
    });

    // Edit dan Update Data Dokter
    Route::get('/dokter/edit', [DokterController::class, 'edit'])->name('dokter.edit');
    Route::post('/dokter/update', [DokterController::class, 'update'])->name('dokter.update');

    // janji 
    // Route::get('/janji-periksa/{jadwal}', [App\Http\Controllers\Dokter\JanjiPeriksaController::class, 'index'])->name('dokter.janji.index');
    // // Route untuk buat pemeriksaan baru berdasarkan janji periksa
    // Route::get('/periksa/create/{janji}', [PeriksaController::class, 'create'])->name('dokter.periksa.create');

    // // Route untuk lihat pemeriksaan berdasarkan janji periksa
    // Route::get('/periksa/{janji}', [PeriksaController::class, 'show'])->name('dokter.periksa.show');
    Route::get('/janji-periksa/{jadwal}', [App\Http\Controllers\Dokter\JanjiPeriksaController::class, 'index'])->name('dokter.janji.index');


    // periksa form
    // Buat form pemeriksaan baru berdasarkan janji periksa (GET)
    Route::get('/periksa/create/{janji}', [PeriksaController::class, 'create'])->name('dokter.periksa.create');

    // Simpan data pemeriksaan (POST)
    Route::post('/periksa', [PeriksaController::class, 'store'])->name('dokter.periksa.store');

    // Tampilkan detail pemeriksaan berdasarkan janji periksa (GET)
    Route::get('/periksa/{janji}', [PeriksaController::class, 'show'])->name('dokter.periksa.show')->whereNumber('janji');

    // Duplikat lainnya
    Route::get('/periksa/create/{id_janji_periksa}', [PeriksaController::class, 'create'])->name('periksa.create');
    Route::post('/periksa/store', [PeriksaController::class, 'store'])->name('periksa.store');
    Route::get('/periksa/{id}', [PeriksaController::class, 'show'])->name('periksa.show');



    // Group khusus route OBAT
    Route::prefix('obat')->name('dokter.obat.')->group(function () {
        Route::get('/trashed', [ObatController::class, 'trashed'])->name('trashed');
        Route::post('/{id}/restore', [ObatController::class, 'restore'])->name('restore');

        Route::resource('/', ObatController::class)->parameters([
            '' => 'obat'  // agar parameter tetap konsisten
        ]);
    });
});

require __DIR__ . '/auth.php';
