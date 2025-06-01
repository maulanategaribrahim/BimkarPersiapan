<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use App\Models\Poli;   
use App\Models\User;

class JadwalPeriksa extends Model
{
    use HasFactory;

    protected $fillable = [
        'id_dokter',
        'hari',
        'id_poli',
        'jam_mulai',
        'jam_selesai',
        'status'
    ];

    public function dokter(): BelongsTo
    {
        return $this->belongsTo(User::class, 'id_dokter');
    }

    public function janjiPeriksas(): HasMany
    {
        return $this->hasMany(JanjiPeriksa::class, 'id_jadwal_periksa');
    }

    // di app/Models/JadwalPeriksa.php
    public function poli(): BelongsTo
    {
        return $this->belongsTo(Poli::class, 'id_poli'); // 'id_poli' sesuaikan dengan kolom foreign key ke tabel poli
    }
}
