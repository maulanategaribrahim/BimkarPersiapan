<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Facades\Log;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;

class AuthenticatedSessionController extends Controller
{
    /**
     * Display the login view.
     */
    public function create(): View
    {
        return view('auth.login');
    }

    /**
     * Handle an incoming authentication request.
     */
    public function store(LoginRequest $request)
    {
        try {
            $request->authenticate();
            $request->session()->regenerate();

            $user = Auth::user(); // Tambahkan ini!

            if ($user->role === 'dokter') {
                return redirect()->intended(route('dokter.dashboard'));
            } elseif ($user->role === 'pasien') {
                return redirect()->intended(route('pasien.janji.index'));
            }

            // Sementara untuk debug, hapus setelah beres
            dd('Role tidak dikenali: ' . $user->role);
        } catch (ValidationException $e) {
            Log::error('Login gagal: ' . $e->getMessage());
            return back()->with([
                'status' => 'error',
                'message' => "Login gagal. Silakan coba lagi."
            ]);
        }
    }


    /**
     * Destroy an authenticated session.
     */
    public function destroy(Request $request): RedirectResponse
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
