<x-app-layout>
    <x-slot name="header">
        <h2 class="text-xl font-semibold leading-tight text-gray-800">
            Detail Pemeriksaan
        </h2>
    </x-slot>

    <div class="py-6 max-w-4xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white shadow-sm rounded-lg p-6 space-y-4">
            @if ($periksa)
                <h4 class="text-lg font-semibold text-center">Hasil Pemeriksaan</h4>
                <p><strong>Tanggal Periksa:</strong> {{ \Carbon\Carbon::parse($periksa->tgl_periksa)->format('d-m-Y') }}</p>
                <p><strong>Diagnosa:</strong> {{ $periksa->diagnosa }}</p>
                <p><strong>Tindakan:</strong> {{ $periksa->tindakan }}</p>
                <p><strong>Catatan:</strong> {{ $periksa->catatan ?? '-' }}</p>
                <p><strong>Biaya:</strong> Rp {{ number_format($periksa->biaya_periksa, 0, ',', '.') }}</p>

                <p><strong>Obat:</strong></p>
                @if ($periksa->detailPeriksas->isEmpty())
                    <p>Tidak ada obat yang diberikan.</p>
                @else
                    <ul class="list-disc list-inside">
                        @foreach ($periksa->detailPeriksas as $detail)
                            <li>{{ $detail->obat->nama_obat }}</li>
                        @endforeach
                    </ul>
                @endif
            @else
                <p>Data pemeriksaan tidak ditemukan.</p>
            @endif
        </div>
    </div>
</x-app-layout>
