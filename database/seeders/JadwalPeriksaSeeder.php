<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\JadwalPeriksa;
use App\Models\Poli;

class JadwalPeriksaSeeder extends Seeder
{
    public function run(): void
    {
        // Ambil semua dokter
        $dokters = User::where('role', 'dokter')->get();
        $polis = Poli::all();

        // Daftar hari
        $days = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu'];

        foreach ($dokters as $dokter) {
            // Ambil 2 hari kerja per dokter
            $doctorDays = array_slice($days, $dokter->id % 5, 2);
            $firstSchedule = true;

            foreach ($doctorDays as $day) {
                // Ambil satu poli secara acak
                $poli = $polis->random();

                // Jadwal pagi
                JadwalPeriksa::create([
                    'id_dokter' => $dokter->id,
                    'id_poli' => $poli->id, // ✅ Tambahkan ini
                    'hari' => $day,
                    'jam_mulai' => '08:00:00',
                    'jam_selesai' => '12:00:00',
                    'status' => $firstSchedule ? true : false,
                ]);
                $firstSchedule = false;

                // Jadwal siang (opsional)
                if ($dokter->id % 2 == 0) {
                    JadwalPeriksa::create([
                        'id_dokter' => $dokter->id,
                        'id_poli' => $poli->id, // ✅ Tambahkan ini
                        'hari' => $day,
                        'jam_mulai' => '13:00:00',
                        'jam_selesai' => '16:00:00',
                        'status' => false,
                    ]);
                }
            }
        }
    }
}
