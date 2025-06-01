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
            'hari' => 'required|in:Senin,Selasa,Rabu,Kamis,Jumat,Sabtu,Minggu',
            'jam_mulai' => 'required|date_format:H:i',
            'jam_selesai' => 'required|date_format:H:i|after:jam_mulai',
        ]);

        // Cek duplikasi jadwal yang sama
        $exists = JadwalPeriksa::where('id_dokter', Auth::id())
            ->where('hari', $request->hari)
            ->where('jam_mulai', $request->jam_mulai)
            ->where('jam_selesai', $request->jam_selesai)
            ->exists();

        if ($exists) {
            return redirect()->back()->with('status', 'jadwal-periksa-exists');
        }

        JadwalPeriksa::create([
            'id_dokter' => Auth::id(),
            'hari' => $request->hari,
            'jam_mulai' => $request->jam_mulai,
            'jam_selesai' => $request->jam_selesai,
            'status' => false,
        ]);

        return redirect()->back()->with('status', 'jadwal-periksa-created');
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
