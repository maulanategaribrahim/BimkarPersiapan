<?php

namespace App\Http\Controllers\Dokter;

use App\Http\Controllers\Controller;
use App\Models\JanjiPeriksa;
use App\Models\JadwalPeriksa;
use Illuminate\Http\Request;

class JanjiPeriksaController extends Controller
{
    public function index($jadwal)
    {
        $jadwal = JadwalPeriksa::with('dokter', 'poli')->findOrFail($jadwal);

        $daftarJanji = JanjiPeriksa::with('pasien', 'periksa')
            ->where('id_jadwal_periksa', $jadwal->id)
            ->orderBy('no_antrian')
            ->get();

        return view('dokter.janji-periksa.index', compact('jadwal', 'daftarJanji'));
    }
}
