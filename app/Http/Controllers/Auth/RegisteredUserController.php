<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth; // <- ini wajib ditambahkan
use Illuminate\Validation\ValidationException;
use Illuminate\View\View;

class RegisteredUserController extends Controller
{
    /**
     * Display the registration view.
     */
    public function create(): View
    {
        return view('auth.register');
    }

    /**
     * Handle an incoming registration request.
     *
     * @throws ValidationException
     */
    public function store(Request $request)
    {
        $request->validate([
            'nama' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:' . User::class],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
            'alamat' => ['required', 'string', 'max:255'],
            'no_hp' => ['required', 'string', 'max:50'],
            'no_ktp' => ['required', 'string', 'max:255'],
        ]);

        $existingPatient = User::where('no_ktp', $request->no_ktp)->first();
        if ($existingPatient) {
            return redirect()->back()
                ->withErrors(['no_ktp' => 'Nomor KTP sudah terdaftar.'])
                ->withInput();
        }

        $currentYearMonth = date('Ym');
        $patientCount = User::where('no_rekam_medis', 'like', $currentYearMonth . '-%')->count();
        $no_rm = $currentYearMonth . '-' . str_pad($patientCount + 1, 3, '0', STR_PAD_LEFT);

        $user = User::create([
            'nama' => $request->nama,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'role' => 'pasien',
            'alamat' => $request->alamat,
            'no_hp' => $request->no_hp,
            'no_ktp' => $request->no_ktp,
            'no_rekam_medis' => $no_rm,
        ]);

        // Login user otomatis setelah registrasi
        Auth::login($user);

        // Redirect langsung ke halaman janji periksa
        return redirect()->route('pasien.janji.index');
    }
}
