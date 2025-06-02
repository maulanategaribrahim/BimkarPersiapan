<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Dashboard Pasien') }}
        </h2>
    </x-slot>

    <div class="py-12 mt-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            {{-- Daftar Poli (sama seperti sebelumnya) --}}
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
            // Format tanggal d-m-Y
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
                            // Buat array data lengkap untuk modal
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
                <div
                    x-show="modalOpen"
                    class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50"
                    style="display: none;"
                    @click.self="modalOpen = false"
                    x-transition:enter="transition ease-out duration-300"
                    x-transition:enter-start="opacity-0"
                    x-transition:enter-end="opacity-100"
                    x-transition:leave="transition ease-in duration-200"
                    x-transition:leave-start="opacity-100"
                    x-transition:leave-end="opacity-0">
                    <div
                        class="bg-white dark:bg-gray-800 rounded-lg p-6 max-w-md w-full relative shadow-lg"
                        x-transition:enter="transition transform duration-300"
                        x-transition:enter-start="scale-90 opacity-0"
                        x-transition:enter-end="scale-100 opacity-100"
                        x-transition:leave="transition transform duration-200"
                        x-transition:leave-start="scale-100 opacity-100"
                        x-transition:leave-end="scale-90 opacity-0">
                        <button
                            @click="modalOpen = false"
                            class="absolute top-2 right-2 text-gray-600 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white font-bold text-xl">&times;</button>

                        <h3 class="text-xl font-semibold mb-4 text-center dark:text-gray-100">Detail Jadwal Poli</h3>

                        <div class="space-y-2 dark:text-gray-100">
                            <p><strong>Nama Poli:</strong> <span x-text="modalData.nama_poli"></span></p>
                            <p><strong>Nama Dokter:</strong> {{ $item->jadwalPeriksa->dokter->nama ?? '-' }}</p>

                            <template x-if="modalData.tanggal_periksa">
                                <div>
                                    <hr class="my-3 border-gray-300 dark:border-gray-600" />
                                    <h4 class="text-lg font-semibold text-center">Hasil Pemeriksaan</h4>
                                    <p><strong>Tanggal Periksa:</strong> <span x-text="formatDate(modalData.tanggal_periksa)"></span></p>
                                    <p><strong>Diagnosa:</strong> <span x-text="modalData.diagnosa"></span></p>
                                    <p><strong>Tindakan:</strong> <span x-text="modalData.tindakan"></span></p>
                                    <p><strong>Catatan:</strong> <span x-text="modalData.catatan"></span></p>
                                    <p><strong>Biaya:</strong> <span x-text="formatCurrency(modalData.biaya_periksa)"></span></p>

                                    <p><strong>Obat:</strong></p>
                                    <ul class="list-disc list-inside">
                                        <template x-for="obat in modalData.obats" :key="obat">
                                            <li x-text="obat"></li>
                                        </template>
                                    </ul>
                                </div>
                            </template>

                            <!-- <p><strong>Nama Dokter:</strong> <span x-text="modalData.nama_dokter"></span></p> -->
                            <p><strong>Hari:</strong> <span x-text="modalData.hari"></span></p>
                            <p><strong>Mulai:</strong> <span x-text="modalData.mulai"></span></p>
                            <p><strong>Selesai:</strong> <span x-text="modalData.selesai"></span></p>
                            <p><strong>Nomor Antrian:</strong> <span x-text="modalData.nomor_antrian"></span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Alpine.js --}}
    <script src="//unpkg.com/alpinejs" defer></script>
</x-app-layout>