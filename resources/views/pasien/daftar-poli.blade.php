<x-app-layout>
    <x-slot name="header">
        <h4 class="font-semibold text-xl text-gray-800 leading-tight">Janji Periksa</h4>
    </x-slot>

    <div class="container mx-auto px-4 py-6">
        <form method="POST" action="{{ route('pasien.janji.store') }}">
            @csrf
            <div class="mb-4">
                <label for="id_jadwal_periksa" class="block text-gray-700 font-bold mb-2">Pilih Jadwal</label>
                @php
                $uniqueJadwal = $jadwalList->unique(function ($item) {
                return $item->id_dokter . '-' . $item->hari . '-' . $item->jam_mulai . '-' . $item->jam_selesai;
                });
                @endphp

                <select id="id_jadwal_periksa" name="id_jadwal_periksa" required class="form-select block w-full mt-1 ...">
                    <option value="">-- Pilih Jadwal --</option>
                    @foreach ($uniqueJadwal as $jadwal)
                    <option value="{{ $jadwal->id }}">
                        {{ $jadwal->poli->nama_poli ?? '-' }} - {{ $jadwal->dokter->nama ?? '-' }} ({{ $jadwal->hari }} {{ $jadwal->jam_mulai }} - {{ $jadwal->jam_selesai }})
                    </option>
                    @endforeach
                </select>
            </div>
            <div class="mb-4">
                <label for="keluhan" class="block text-gray-700 font-bold mb-2">Keluhan</label>
                <textarea id="keluhan" name="keluhan" required
                    class="form-textarea mt-1 block w-full border border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500"></textarea>
            </div>
            @if (session('success'))
            <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative mb-4" role="alert">
                <strong class="font-bold">Sukses!</strong>
                <span class="block sm:inline">{{ session('success') }}</span>
                <span class="absolute top-0 bottom-0 right-0 px-4 py-3" onclick="this.parentElement.remove();">
                    <svg class="fill-current h-6 w-6 text-green-500" role="button" xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 20 20">
                        <title>Close</title>
                        <path d="M14.348 5.652a1 1 0 10-1.414-1.414L10 7.172 7.066 4.238a1 1 0 00-1.414 1.414L8.828 10l-3.176 3.176a1 1 0 001.414 1.414L10 12.828l2.934 2.934a1 1 0 001.414-1.414L11.172 10l3.176-3.176z" />
                    </svg>
                </span>
            </div>
            @endif
            <button type="submit" class="btn btn-primary bg-indigo-600 hover:bg-indigo-700 text-white font-bold py-2 px-4 rounded">
                Daftar
            </button>
        </form>

        <hr class="my-6">

        <h5 class="text-lg font-semibold mb-4">Riwayat Daftar Poli</h5>
        <table class="table-auto w-full border-collapse border border-gray-200">
            <thead class="bg-gray-200">
                <tr>
                    <th class="border border-gray-300 px-3 py-2">No.</th>
                    <th class="border border-gray-300 px-3 py-2">No. RM</th>
                    <th class="border border-gray-300 px-3 py-2">Poli</th>
                    <th class="border border-gray-300 px-3 py-2">Dokter</th>
                    <th class="border border-gray-300 px-3 py-2">Hari</th>
                    <th class="border border-gray-300 px-3 py-2">Mulai</th>
                    <th class="border border-gray-300 px-3 py-2">Selesai</th>
                    <th class="border border-gray-300 px-3 py-2">Antrian</th>
                    <th class="border border-gray-300 px-3 py-2">Status</th>
                    <th class="border border-gray-300 px-3 py-2">Detail</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($riwayat as $item)
                <tr class="even:bg-gray-100 border border-gray-300">
                    <td class="border px-3 py-2 text-center">{{ $loop->iteration }}</td>
                    <td class="border px-3 py-2">{{ $item->pasien->no_rekam_medis ?? '-' }}</td>
                    <td class="border px-3 py-2">{{ $item->jadwalPeriksa->poli->nama_poli ?? '-' }}</td>
                    <td class="border px-3 py-2">{{ $item->jadwalPeriksa->dokter->nama ?? '-' }}</td>
                    <td class="border px-3 py-2">{{ $item->jadwalPeriksa->hari }}</td>
                    <td class="border px-3 py-2">{{ $item->jadwalPeriksa->jam_mulai }}</td>
                    <td class="border px-3 py-2">{{ $item->jadwalPeriksa->jam_selesai }}</td>
                    <td class="border px-3 py-2 text-center">{{ $item->no_antrian }}</td>
                    <td class="border px-3 py-2 text-center">
                        @if ($item->periksa)
                        <span class="text-green-600 font-semibold">Sudah diperiksa</span>
                        @else
                        <span class="text-red-600 font-semibold">Belum diperiksa</span>
                        @endif
                    </td>
                    <td class="border px-3 py-2 text-center">
                        <!-- Modal trigger dan modal dengan Alpine.js -->
                        <div x-data="{ modalOpen: false }">
                            <button @click="modalOpen = true"
                                class="text-indigo-600 hover:text-indigo-900 font-semibold focus:outline-none">
                                Detail
                            </button>

                            <!-- Modal backdrop -->
                            <div x-show="modalOpen"
                                class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50"
                                style="display: none;"
                                @click.self="modalOpen = false"
                                x-transition:enter="transition ease-out duration-300"
                                x-transition:enter-start="opacity-0"
                                x-transition:enter-end="opacity-100"
                                x-transition:leave="transition ease-in duration-200"
                                x-transition:leave-start="opacity-100"
                                x-transition:leave-end="opacity-0">

                                <!-- Modal content -->
                                <div class="bg-white rounded-lg shadow-lg max-w-4xl w-full p-6 relative max-h-[80vh] overflow-auto"
                                    x-transition:enter="transition transform duration-300"
                                    x-transition:enter-start="scale-90 opacity-0"
                                    x-transition:enter-end="scale-100 opacity-100"
                                    x-transition:leave="transition transform duration-200"
                                    x-transition:leave-start="scale-100 opacity-100"
                                    x-transition:leave-end="scale-90 opacity-0">

                                    <button @click="modalOpen = false"
                                        class="absolute top-2 right-2 text-gray-600 hover:text-gray-900 focus:outline-none text-xl font-bold">&times;</button>

                                    <h3 class="text-xl font-semibold mb-4 text-center">Detail Jadwal Poli</h3>

                                    <table class="min-w-full divide-y divide-gray-200 text-sm">
                                        <tbody class="divide-y divide-gray-200">
                                            <tr class="bg-white">
                                                <td class="px-6 py-3 font-medium text-gray-600 w-40">Nama Poli</td>
                                                <td class="px-6 py-3">{{ $item->jadwalPeriksa->poli->nama_poli ?? '-' }}</td>
                                            </tr>
                                            <tr class="bg-gray-50">
                                                <td class="px-6 py-3 font-medium text-gray-600">Nama Dokter</td>
                                                <td class="px-6 py-3">{{ $item->jadwalPeriksa->dokter->nama ?? '-' }}</td>
                                            </tr>

                                            @if ($item->periksa)
                                            <tr>
                                                <td colspan="2" class="px-6 py-4 bg-gray-100 text-center font-semibold text-lg">Hasil Pemeriksaan</td>
                                            </tr>
                                            <tr class="bg-white">
                                                <td class="px-6 py-3 font-medium text-gray-600">Tanggal Periksa</td>
                                                <td class="px-6 py-3">{{ \Carbon\Carbon::parse($item->periksa->tgl_periksa)->format('d-m-Y') }}</td>
                                            </tr>
                                            <tr class="bg-gray-50">
                                                <td class="px-6 py-3 font-medium text-gray-600">Diagnosa</td>
                                                <td class="px-6 py-3">{{ $item->periksa->diagnosa }}</td>
                                            </tr>
                                            <tr class="bg-white">
                                                <td class="px-6 py-3 font-medium text-gray-600">Tindakan</td>
                                                <td class="px-6 py-3">{{ $item->periksa->tindakan }}</td>
                                            </tr>
                                            <tr class="bg-gray-50">
                                                <td class="px-6 py-3 font-medium text-gray-600">Catatan</td>
                                                <td class="px-6 py-3">{{ $item->periksa->catatan ?? '-' }}</td>
                                            </tr>

                                            <tr class="bg-white align-top">
                                                <td class="px-6 py-3 font-medium text-gray-600">Obat</td>
                                                <td class="px-6 py-3">
                                                    @if ($item->periksa->detailPeriksas->isEmpty())
                                                    <span class="text-gray-500">Tidak ada obat yang diberikan.</span>
                                                    @else
                                                    <div class="overflow-x-auto max-h-48">
                                                        <table class="min-w-full text-sm border border-gray-300 rounded">
                                                            <thead class="bg-gray-200 text-gray-700">
                                                                <tr>
                                                                    <th class="px-4 py-2 border">Nama Obat</th>
                                                                    <th class="px-4 py-2 border">Kemasan</th>
                                                                    <th class="px-4 py-2 border">Harga</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                @foreach ($item->periksa->detailPeriksas as $detail)
                                                                <tr class="border-t bg-white hover:bg-gray-50">
                                                                    <td class="px-4 py-2 border">{{ $detail->obat->nama_obat }}</td>
                                                                    <td class="px-4 py-2 border">{{ $detail->obat->kemasan }}</td>
                                                                    <td class="px-4 py-2 border">Rp {{ number_format($detail->obat->harga, 0, ',', '.') }}</td>
                                                                </tr>
                                                                @endforeach
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    @endif
                                                </td>
                                            </tr>

                                            <tr class="bg-gray-50">
                                                <td class="px-6 py-3 font-medium text-gray-600">Biaya Pemeriksaan</td>
                                                <td class="px-6 py-3">Rp {{ number_format($item->periksa->biaya_periksa, 0, ',', '.') }}</td>
                                            </tr>
                                            @endif

                                            <tr class="bg-white">
                                                <td class="px-6 py-3 font-medium text-gray-600">Hari</td>
                                                <td class="px-6 py-3">{{ $item->jadwalPeriksa->hari }}</td>
                                            </tr>
                                            <tr class="bg-gray-50">
                                                <td class="px-6 py-3 font-medium text-gray-600">Mulai</td>
                                                <td class="px-6 py-3">{{ $item->jadwalPeriksa->jam_mulai }}</td>
                                            </tr>
                                            <tr class="bg-white">
                                                <td class="px-6 py-3 font-medium text-gray-600">Selesai</td>
                                                <td class="px-6 py-3">{{ $item->jadwalPeriksa->jam_selesai }}</td>
                                            </tr>
                                            <tr class="bg-gray-50">
                                                <td class="px-6 py-3 font-medium text-gray-600">Nomor Antrian</td>
                                                <td class="px-6 py-3">{{ $item->no_antrian }}</td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </div>

                    </td>

                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <!-- Alpine.js -->
    <script src="//unpkg.com/alpinejs" defer></script>
</x-app-layout>