<?php

namespace App\Http\Controllers\Dokter;

use App\Http\Controllers\Controller;
use App\Models\JadwalPeriksa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class JadwalPeriksaController extends Controller
{
    // Halaman dashboard: hanya tampilkan jadwal aktif
    public function dashboard()
    {
        $jadwalAktif = JadwalPeriksa::where('id_dokter', Auth::id())
            ->where('status', true)
            ->get();

        return view('dokter.dashboard', compact('jadwalAktif'));
    }

    // Halaman index: tampilkan semua jadwal (aktif & nonaktif)
    public function index()
    {
        $jadwalPeriksas = JadwalPeriksa::where('id_dokter', Auth::id())->get();

        return view('dokter.jadwal-periksa.index', compact('jadwalPeriksas'));
    }

    // Simpan jadwal baru
    public function store(Request $request)
    {
        $request->validate([
            'hari' => 'required',
            'jam_mulai' => 'required',
            'jam_selesai' => 'required',
        ]);

        $user = Auth::user();

        if ($user->role !== 'dokter') {
            return redirect()->back()->with('error', 'Hanya dokter yang bisa menambah jadwal.');
        }

        JadwalPeriksa::create([
            'id_dokter' => Auth::id(),
            'id_poli' => Auth::user()->id_poli,
            'hari' => $request->hari,
            'jam_mulai' => $request->jam_mulai,
            'jam_selesai' => $request->jam_selesai,
            'status' => 0,
        ]);

        return redirect()->back()->with('success', 'Jadwal berhasil ditambahkan');
    }


    // Update status aktif/nonaktif jadwal
    public function update($id)
    {
        $jadwalPeriksa = JadwalPeriksa::findOrFail($id);

        if (!$jadwalPeriksa->status) {
            // Nonaktifkan semua jadwal dokter
            JadwalPeriksa::where('id_dokter', $jadwalPeriksa->id_dokter)
                ->update(['status' => false]);

            // Aktifkan jadwal ini
            $jadwalPeriksa->status = true;
            $jadwalPeriksa->save();
        } else {
            // Jika sudah aktif, nonaktifkan
            $jadwalPeriksa->status = false;
            $jadwalPeriksa->save();
        }

        return redirect()->back()->with('status', 'jadwal-periksa-updated');
    }
}
