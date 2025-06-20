<?php

namespace App\Http\Controllers\Dokter;

use App\Http\Controllers\Controller;
use App\Models\Obat;
use Illuminate\Http\Request;

class ObatController extends Controller
{
    public function index()
    {
        $obats = Obat::all();

        return view('dokter.obat.index')->with([
            'obats' => $obats,
        ]);
    }

    public function create()
    {
        return view('dokter.obat.create');
    }

    public function edit($id)
    {
        $obat = Obat::find($id);

        return view('dokter.obat.edit')->with([
            'obat' => $obat,
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_obat' => 'required|string|max:255',
            'kemasan' => 'required|string|max:255',
            'harga' => 'required|numeric|min:0',
        ]);

        Obat::create([
            'nama_obat' => $request->nama_obat,
            'kemasan' => $request->kemasan,
            'harga' => $request->harga,
        ]);

        return redirect()->route('dokter.obat.index')->with('status', 'obat-created');
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nama_obat' => 'required|string|max:255',
            'kemasan' => 'required|string|max:255',
            'harga' => 'required|numeric|min:0',
        ]);

        $obat = Obat::find($id);
        $obat->update([
            'nama_obat' => $request->nama_obat,
            'kemasan' => $request->kemasan,
            'harga' => $request->harga,
        ]);

        return redirect()->route('dokter.obat.index')->with('status', 'obat-updated');
    }

    public function destroy($id)
    {
        $obat = Obat::find($id);

        if ($obat) { // Periksa apakah data obat ditemukan
            $obat->delete(); // Lakukan soft delete
            return redirect()->route('dokter.obat.index')->with('success', 'Obat berhasil dihapus.'); // Redirect dengan pesan sukses
        } else {
            return redirect()->route('dokter.obat.index')->with('error', 'Obat tidak ditemukan.'); // Redirect dengan pesan error
        }
    }

    public function restore($id)
    {
        $obat = Obat::withTrashed()->find($id);

        if ($obat) {
            $obat->restore();
            return redirect()->route('dokter.obat.trashed')->with('success', 'Obat berhasil dipulihkan.');
        } else {
            return redirect()->route('dokter.obat.trashed')->with('error', 'Obat tidak ditemukan.');
        }
    }

    public function trashed()
    {
        $obats = Obat::onlyTrashed()->get();
        return view('dokter.obat.trashed', compact('obats'));
    }
}
