<?php

namespace App\Http\Controllers\Pasien;

use App\Http\Controllers\Controller;
use App\Models\JanjiPeriksa;
use App\Models\JadwalPeriksa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class JanjiPeriksaController extends Controller
{
    // Menampilkan form daftar poli + riwayat daftar poli
    public function index()
    {
        $jadwalList = JadwalPeriksa::with('dokter', 'poli')
            ->where('status', 1)
            ->get()
            // Hapus duplikat berdasarkan kombinasi dokter, hari, jam
            ->unique(function ($item) {
                return $item->id_dokter . '-' . $item->hari . '-' . $item->jam_mulai . '-' . $item->jam_selesai;
            });

        // Ambil riwayat janji periksa pasien
        $riwayat = JanjiPeriksa::with('jadwalPeriksa.dokter', 'jadwalPeriksa.poli')
            ->where('id_pasien', Auth::id())
            ->get();

        return view('pasien.daftar-poli', compact('jadwalList', 'riwayat'));
    }
    // Menyimpan janji periksa
    public function store(Request $request)
    {
        $request->validate([
            'id_jadwal_periksa' => 'required|exists:jadwal_periksas,id',
            'keluhan' => 'required|string|max:255',
        ]);

        $antrian = JanjiPeriksa::where('id_jadwal_periksa', $request->id_jadwal_periksa)->count() + 1;

        JanjiPeriksa::create([
            'id_pasien' => Auth::id(),
            'id_jadwal_periksa' => $request->id_jadwal_periksa,
            'keluhan' => $request->keluhan,
            'no_antrian' => $antrian,
        ]);

        return redirect()->route('pasien.janji.index')->with('success', 'Berhasil mendaftar poli.');
    }
    public function riwayat()
    {
        $riwayat = JanjiPeriksa::with([
            'jadwalPeriksa.dokter',
            'jadwalPeriksa.poli',
            'pasien',
            'periksa.detailPeriksas.obat'
        ])
            ->where('id_pasien', Auth::id())
            ->orderByDesc('created_at')
            ->get();

        return view('pasien.riwayat', compact('riwayat'));
    }
}
