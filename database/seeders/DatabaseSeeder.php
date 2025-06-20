<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // // Optional: create user dummy pakai factory
        // User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        // Panggil seeder tambahan (UserSeeder)
        $this->call([
            PoliSeeder::class,
            UserSeeder::class,
            JadwalPeriksaSeeder::class,
            ObatSeeder::class,

        ]);
    }
}
