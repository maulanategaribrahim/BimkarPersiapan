<?php
namespace App\Http\Controllers\Dokter;

use App\Http\Controllers\Controller; 
use App\Models\JanjiPeriksa;  
use App\Models\Periksa;
use App\Models\DetailPeriksa;
use App\Models\Obat;
use Carbon\Carbon;
use Illuminate\Http\Request;

class PeriksaController extends Controller
{
    public function create($id_janji_periksa)
    {
        $janji = JanjiPeriksa::findOrFail($id_janji_periksa);
        $obats = Obat::all(); // Semua obat untuk pilihan
        return view('dokter.periksa.create', compact('janji', 'obats'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'id_janji_periksa' => 'required|exists:janji_periksas,id',
            'diagnosa' => 'required|string',
            'tindakan' => 'required|string',
            'catatan' => 'nullable|string',
            'biaya_periksa' => 'nullable|numeric',
            'obat_id' => 'required|array',
            'obat_id.*' => 'exists:obats,id',
        ]);

        $periksa = Periksa::create([
            'id_janji_periksa' => $request->id_janji_periksa,
            'tgl_periksa' => Carbon::now(),
            'diagnosa' => $request->diagnosa,
            'tindakan' => $request->tindakan,
            'catatan' => $request->catatan,
            'biaya_periksa' => $request->biaya_periksa,
        ]);

        foreach ($request->obat_id as $idObat) {
            DetailPeriksa::create([
                'id_periksa' => $periksa->id,
                'id_obat' => $idObat,
            ]);
        }

        return redirect()->route('dokter.periksa.show', $periksa->id)->with('success', 'Data pemeriksaan berhasil disimpan');
    }

    public function show($id)
    {
        $periksa = Periksa::with(['janjiPeriksa', 'detailPeriksas.obat'])->findOrFail($id);
        return view('dokter.periksa.show', compact('periksa'));
    }
}
