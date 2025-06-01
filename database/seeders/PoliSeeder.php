<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PoliSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        \App\Models\Poli::create(['nama_poli' => 'Poli Anak']);
        \App\Models\Poli::create(['nama_poli' => 'Poli Umum']);
        \App\Models\Poli::create(['nama_poli' => 'Poli Kebidanan dan Kandungan']);
        \App\Models\Poli::create(['nama_poli' => 'Poli Penyakit Dalam']);
        \App\Models\Poli::create(['nama_poli' => 'Poli Mata']);
        \App\Models\Poli::create(['nama_poli' => 'Poli THT']);
    }
}
