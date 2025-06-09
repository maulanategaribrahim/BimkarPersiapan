<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Dashboard Pasien') }}
        </h2>
    </x-slot>

    <div class="py-12 mt-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            {{-- Daftar Poli --}}
            <div class="overflow-x-auto mb-10">
                <div class="flex space-x-6 min-w-max">
                    @php
                    $polis = [
                    ['nama' => 'Poli Anak', 'gambar' => 'https://tse4.mm.bing.net/th?id=OIP.b6V7LrkJLbReBXJ8unmYMgHaHJ&pid=Api&P=0&h=220'],
                    ['nama' => 'Poli Umum', 'gambar' => 'https://tse1.mm.bing.net/th?id=OIP.Nkw1tF2jOWlT-EPZxWrZyQHaHa&pid=Api&P=0&h=220'],
                    ['nama' => 'Poli Kebidanan dan Kandungan', 'gambar' => 'https://tse2.mm.bing.net/th?id=OIP.Sk9gjpKCEiLJGTtzdxeY0AHaEq&pid=Api&P=0&h=220'],
                    ['nama' => 'Poli Penyakit Dalam', 'gambar' => 'https://tse2.mm.bing.net/th?id=OIP.AQIUlRGeluFT7ygvbOWh2AHaE8&pid=Api&P=0&h=220'],
                    ['nama' => 'Poli Mata', 'gambar' => 'https://tse2.mm.bing.net/th?id=OIP.L-4sfun1xfYo_y8VBl1YCQHaEi&pid=Api&P=0&h=220'],
                    ['nama' => 'Poli THT', 'gambar' => 'https://tse1.mm.bing.net/th?id=OIP.IWrDCVuT_SJkLEjYnaB0kQHaE8&pid=Api&P=0&h=220'],
                    ];
                    @endphp

                    @foreach ($polis as $poli)
                    <div class="bg-white dark:bg-gray-800 rounded-lg shadow-lg overflow-hidden w-64 flex-shrink-0">
                        <img src="{{ $poli['gambar'] }}" alt="{{ $poli['nama'] }}" class="w-full h-40 object-cover">
                        <div class="p-4">
                            <h3 class="text-lg font-semibold text-gray-800 dark:text-gray-100 mb-2">{{ $poli['nama'] }}</h3>
                            <a href="{{ route('pasien.janji.index') }}" class="inline-block px-4 py-2 bg-blue-600 text-white rounded hover:bg-blue-700 transition">
                                Daftar Poli
                            </a>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>

            {{-- Riwayat Daftar Poli --}}
            <div x-data="{
                modalOpen: false,
                modalData: {},
                formatDate(date) {
                    if (!date) return '-';
                    return new Date(date).toLocaleDateString('id-ID', {
                        day: '2-digit',
                        month: '2-digit',
                        year: 'numeric'
                    });
                },
                formatCurrency(num) {
                    if (!num) return '-';
                    return new Intl.NumberFormat('id-ID', { style: 'currency', currency: 'IDR', minimumFractionDigits: 0 }).format(num);
                }
            }" class="bg-white dark:bg-gray-800 rounded-lg shadow p-6">

                <h3 class="text-xl font-semibold text-gray-800 dark:text-gray-100 mb-4">Riwayat Daftar Poli</h3>

                <div class="overflow-x-auto">
                    <table class="min-w-full text-sm text-left text-gray-700 dark:text-gray-200">
                        <thead class="bg-gray-100 dark:bg-gray-700 text-gray-800 dark:text-gray-100">
                            <tr>
                                <th class="px-4 py-2">No.</th>
                                <th class="px-4 py-2">No. RM</th>
                                <th class="px-4 py-2">Poli</th>
                                <th class="px-4 py-2">Dokter</th>
                                <th class="px-4 py-2">Hari</th>
                                <th class="px-4 py-2">Mulai</th>
                                <th class="px-4 py-2">Selesai</th>
                                <th class="px-4 py-2">Antrian</th>
                                <th class="px-4 py-2">Status</th>
                                <th class="px-4 py-2">Detail</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($riwayat->whereNotNull('periksa') as $i => $item)
                            @php
                            $detailPeriksas = $item->periksa ? $item->periksa->detailPeriksas->map(fn($d) => $d->obat->nama_obat)->toArray() : [];
                            $modalData = [
                            'nama_poli' => $item->jadwalPeriksa->poli->nama_poli ?? '-',
                            'tanggal_periksa' => $item->periksa ? $item->periksa->tgl_periksa : null,
                            'diagnosa' => $item->periksa->diagnosa ?? '-',
                            'tindakan' => $item->periksa->tindakan ?? '-',
                            'catatan' => $item->periksa->catatan ?? '-',
                            'biaya_periksa' => $item->periksa->biaya_periksa ?? 0,
                            'obats' => $detailPeriksas,
                            'nama_dokter' => $item->jadwalPeriksa->dokter->nama ?? '-',
                            'hari' => $item->jadwalPeriksa->hari ?? '-',
                            'mulai' => $item->jadwalPeriksa->jam_mulai ?? '-',
                            'selesai' => $item->jadwalPeriksa->jam_selesai ?? '-',
                            'nomor_antrian' => $item->no_antrian ?? '-',
                            ];
                            @endphp
                            <tr class="border-b border-gray-200 dark:border-gray-600">
                                <td class="px-4 py-2">{{ $i + 1 }}</td>
                                <td class="px-4 py-2">{{ $item->pasien->no_rekam_medis ?? '-' }}</td>
                                <td class="px-4 py-2">{{ $item->jadwalPeriksa->poli->nama_poli ?? '-' }}</td>
                                <td class="px-4 py-2">{{ $item->jadwalPeriksa->dokter->nama ?? '-' }}</td>
                                <td class="px-4 py-2">{{ $item->jadwalPeriksa->hari ?? '-' }}</td>
                                <td class="px-4 py-2">{{ $item->jadwalPeriksa->jam_mulai ?? '-' }}</td>
                                <td class="px-4 py-2">{{ $item->jadwalPeriksa->jam_selesai ?? '-' }}</td>
                                <td class="px-4 py-2">{{ $item->no_antrian ?? '-' }}</td>
                                <td class="px-4 py-2">
                                    @if ($item->periksa)
                                    <span class="text-green-600 font-semibold">Sudah Diperiksa</span>
                                    @else
                                    <span class="text-red-600">Belum Diperiksa</span>
                                    @endif
                                </td>
                                <td class="px-4 py-2">
                                    <button
                                        @click="modalData = {{ json_encode($modalData) }}; modalOpen = true"
                                        class="text-blue-600 hover:underline">Detail</button>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>

                {{-- Modal --}}
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

        </div>
    </div>

    {{-- Alpine.js --}}
    <script src="//unpkg.com/alpinejs" defer></script>
</x-app-layout>