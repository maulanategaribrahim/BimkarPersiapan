<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Poli;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    public function run(): void
    {
        $dokters = [
            [
                'nama' => 'Dr. Budi Santoso, Sp.PD',
                'email' => 'budi.santoso@klinik.com',
                'password' => Hash::make('dokter123'),
                'role' => 'dokter',
                'alamat' => 'Jl. Pahlawan No. 123, Jakarta Selatan',
                'no_ktp' => '3175062505800001',
                'no_hp' => '081234567890',
                'poli' => 'Poli Penyakit Dalam',
            ],
            [
                'nama' => 'Dr. Siti Rahayu, Sp.A',
                'email' => 'siti.rahayu@klinik.com',
                'password' => Hash::make('dokter123'),
                'role' => 'dokter',
                'alamat' => 'Jl. Anggrek No. 45, Jakarta Pusat',
                'no_ktp' => '3175064610790002',
                'no_hp' => '081234567891',
                'poli' => 'Poli Anak',
            ],
            [
                'nama' => 'Dr. Ahmad Wijaya, Sp.OG',
                'email' => 'ahmad.wijaya@klinik.com',
                'password' => Hash::make('dokter123'),
                'role' => 'dokter',
                'alamat' => 'Jl. Melati No. 78, Jakarta Barat',
                'no_ktp' => '3175061505780003',
                'no_hp' => '081234567892',
                'poli' => 'Poli Kebidanan dan Kandungan',
            ],
            [
                'nama' => 'Dr. Rina Putri, Sp.M',
                'email' => 'rina.putri@klinik.com',
                'password' => Hash::make('dokter123'),
                'role' => 'dokter',
                'alamat' => 'Jl. Dahlia No. 32, Jakarta Timur',
                'no_ktp' => '3175062708850004',
                'no_hp' => '081234567893',
                'poli' => 'Poli Mata',
            ],
            [
                'nama' => 'Dr. Doni Pratama, Sp.THT',
                'email' => 'doni.pratama@klinik.com',
                'password' => Hash::make('dokter123'),
                'role' => 'dokter',
                'alamat' => 'Jl. Kenanga No. 56, Jakarta Utara',
                'no_ktp' => '3175061002820005',
                'no_hp' => '081234567894',
                'poli' => 'Poli THT',
            ],
             [
                'nama' => 'cobadoktera, Sp.THT',
                'email' => 'coba.pratama@klinik.com',
                'password' => Hash::make('dokter123'),
                'role' => 'dokter',
                'alamat' => 'Jl. Kenanga No. 56, Jakarta Utara',
                'no_ktp' => '3175061002820005',
                'no_hp' => '081234567894',
                'poli' => 'Poli Umum',
            ],
        ];

        foreach ($dokters as $dokter) {
            $poli = Poli::where('nama_poli', $dokter['poli'])->first();

            if ($poli) {
                User::firstOrCreate(
                    ['email' => $dokter['email']],
                    [
                        'nama' => $dokter['nama'],
                        'email' => $dokter['email'],
                        'password' => $dokter['password'],
                        'role' => $dokter['role'],
                        'alamat' => $dokter['alamat'],
                        'no_ktp' => $dokter['no_ktp'],
                        'no_hp' => $dokter['no_hp'],
                        'id_poli' => $poli->id,
                    ]
                );
            } else {
                echo "Poli '{$dokter['poli']}' tidak ditemukan!\n";
            }
        }
    }
}
