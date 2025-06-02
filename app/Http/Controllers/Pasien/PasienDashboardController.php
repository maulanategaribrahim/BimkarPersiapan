<?php

namespace App\Http\Controllers\Pasien;

use App\Http\Controllers\Controller;
use App\Models\JanjiPeriksa;
use Illuminate\Http\Request;

class PasienDashboardController extends Controller
{
    public function index()
    {
        $pasienId = auth()->user()->id;
        $riwayat = JanjiPeriksa::with(['jadwalPeriksa.poli', 'jadwalPeriksa.dokter', 'pasien'])
            ->where('id_pasien', $pasienId)
            ->get();

        return view('pasien.dashboard', compact('riwayat'));
    }
}
