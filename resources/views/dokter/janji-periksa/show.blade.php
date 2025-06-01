<x-app-layout>
    <x-slot name="header">
        <h2 class="text-xl font-semibold">Detail Janji Periksa & Pemeriksaan</h2>
    </x-slot>

    <div class="py-4 px-6">
        <h3 class="text-lg mb-4 font-semibold">Pasien: {{ $janji->pasien->nama }}</h3>
        <p><strong>No. Rekam Medis:</strong> {{ $janji->pasien->no_rekam_medis }}</p>
        <p><strong>Keluhan:</strong> {{ $janji->keluhan }}</p>
        <p><strong>Jadwal:</strong> {{ $janji->jadwalPeriksa->hari }} ({{ $janji->jadwalPeriksa->jam_mulai }} - {{ $janji->jadwalPeriksa->jam_selesai }})</p>
        <hr class="my-4">

        @if ($janji->periksa)
            <h3 class="text-lg mb-2 font-semibold">Hasil Pemeriksaan</h3>
            <p><strong>Diagnosa:</strong> {{ $janji->periksa->diagnosa }}</p>
            <p><strong>Catatan:</strong> {{ $janji->periksa->catatan ?? '-' }}</p>
        @else
            <h3 class="text-lg mb-2 font-semibold">Form Pemeriksaan Baru</h3>
            <form action="{{ route('dokter.periksa.show') }}" method="POST">
                @csrf
                <input type="hidden" name="id_janji" value="{{ $janji->id }}">

                <div class="mb-4">
                    <label class="block font-medium">Diagnosa</label>
                    <textarea name="diagnosa" class="w-full border rounded px-3 py-2" rows="3" required></textarea>
                </div>

                <div class="mb-4">
                    <label class="block font-medium">Catatan</label>
                    <textarea name="catatan" class="w-full border rounded px-3 py-2" rows="3"></textarea>
                </div>

                <button type="submit" class="bg-blue-600 text-white px-4 py-2 rounded">Simpan</button>
            </form>
        @endif
    </div>
</x-app-layout>
