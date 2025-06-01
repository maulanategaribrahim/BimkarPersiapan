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
            <div class="bg-white dark:bg-gray-800 rounded-lg shadow p-6" x-data="{ modalOpen: false, modalData: {} }">
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
                            @php
                            $riwayats = [
                                ['rm' => '-', 'poli' => '-', 'dokter' => 'Dr. Ahmad Wijaya, Sp.OG', 'hari' => 'Kamis', 'mulai' => '08:00:00', 'selesai' => '12:00:00', 'antrian' => 1, 'status' => 'Belum diperiksa'],
                                ['rm' => '-', 'poli' => 'Poli Penyakit Dalam', 'dokter' => 'Dr. Doni Pratama, Sp.THT', 'hari' => 'Selasa', 'mulai' => '08:00:00', 'selesai' => '12:00:00', 'antrian' => 1, 'status' => 'Belum diperiksa'],
                                ['rm' => '-', 'poli' => 'Poli Anak', 'dokter' => 'Dr. Ahmad Wijaya, Sp.OG', 'hari' => 'Kamis', 'mulai' => '08:00:00', 'selesai' => '12:00:00', 'antrian' => 1, 'status' => 'Belum diperiksa'],
                                ['rm' => '-', 'poli' => 'Poli Gigi', 'dokter' => 'Dr. Ahmad Wijaya, Sp.OG', 'hari' => 'Jumat', 'mulai' => '08:00:00', 'selesai' => '12:00:00', 'antrian' => 1, 'status' => 'Belum diperiksa'],
                                ['rm' => '-', 'poli' => '-', 'dokter' => 'Dr. Rina Putri, Sp.M', 'hari' => 'Jumat', 'mulai' => '13:00:00', 'selesai' => '16:00:00', 'antrian' => 1, 'status' => 'Belum diperiksa'],
                            ];
                            @endphp

                            @foreach ($riwayats as $i => $r)
                            <tr class="border-b border-gray-200 dark:border-gray-600">
                                <td class="px-4 py-2">{{ $i + 1 }}</td>
                                <td class="px-4 py-2">{{ $r['rm'] }}</td>
                                <td class="px-4 py-2">{{ $r['poli'] }}</td>
                                <td class="px-4 py-2">{{ $r['dokter'] }}</td>
                                <td class="px-4 py-2">{{ $r['hari'] }}</td>
                                <td class="px-4 py-2">{{ $r['mulai'] }}</td>
                                <td class="px-4 py-2">{{ $r['selesai'] }}</td>
                                <td class="px-4 py-2">{{ $r['antrian'] }}</td>
                                <td class="px-4 py-2">{{ $r['status'] }}</td>
                                <td class="px-4 py-2">
                                    <button 
                                        @click="modalData = {{ json_encode($r) }}; modalOpen = true" 
                                        class="text-blue-600 hover:underline"
                                    >
                                        Detail
                                    </button>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>

                <!-- Modal -->
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
                    x-transition:leave-end="opacity-0"
                >
                    <div
                        class="bg-white dark:bg-gray-800 rounded-lg p-6 max-w-md w-full relative"
                        x-transition:enter="transition transform duration-300"
                        x-transition:enter-start="scale-90 opacity-0"
                        x-transition:enter-end="scale-100 opacity-100"
                        x-transition:leave="transition transform duration-200"
                        x-transition:leave-start="scale-100 opacity-100"
                        x-transition:leave-end="scale-90 opacity-0"
                    >
                        <button
                            @click="modalOpen = false"
                            class="absolute top-2 right-2 text-gray-600 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white font-bold text-xl"
                        >&times;</button>
                        <h3 class="text-xl font-semibold mb-4 text-center dark:text-gray-100">Detail Jadwal Poli</h3>
                        <p><strong>No. RM:</strong> <span x-text="modalData.rm"></span></p>
                        <p><strong>Nama Poli:</strong> <span x-text="modalData.poli"></span></p>
                        <p><strong>Nama Dokter:</strong> <span x-text="modalData.dokter"></span></p>
                        <p><strong>Hari:</strong> <span x-text="modalData.hari"></span></p>
                        <p><strong>Mulai:</strong> <span x-text="modalData.mulai"></span></p>
                        <p><strong>Selesai:</strong> <span x-text="modalData.selesai"></span></p>
                        <p><strong>Nomor Antrian:</strong> <span x-text="modalData.antrian"></span></p>
                        <p><strong>Status:</strong> <span x-text="modalData.status"></span></p>
                    </div>
                </div>

            </div>
        </div>
    </div>

    {{-- Alpine.js --}}
    <script src="//unpkg.com/alpinejs" defer></script>
</x-app-layout>
