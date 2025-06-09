<x-app-layout>
    <x-slot name="header">
        <h2 class="text-xl font-semibold leading-tight text-gray-800">
            Janji Periksa - {{ $jadwal->hari }} ({{ $jadwal->jam_mulai }} - {{ $jadwal->jam_selesai }})
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="mx-auto space-y-6 max-w-7xl sm:px-6 lg:px-8">
            <div class="p-4 bg-white shadow-sm sm:p-6 sm:rounded-lg">
                <h3 class="text-lg font-medium text-gray-900 mb-4">
                    Daftar Pasien
                </h3>

                <div class="overflow-x-auto">
                    <table class="min-w-full text-sm text-left table-auto border border-gray-200">
                        <thead class="bg-gray-100 text-gray-700">
                            <tr>
                                <th class="px-4 py-2 border-b">No</th>
                                <th class="px-4 py-2 border-b">Pasien</th>
                                <th class="px-4 py-2 border-b">No RM</th>
                                <th class="px-4 py-2 border-b">Keluhan</th>
                                <th class="px-4 py-2 border-b">Status</th>
                                <th class="px-4 py-2 border-b">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($daftarJanji as $item)
                            <tr class="hover:bg-gray-50">
                                <td class="px-4 py-2 border-b">{{ $loop->iteration }}</td>
                                <td class="px-4 py-2 border-b">{{ $item->pasien->nama }}</td>
                                <td class="px-4 py-2 border-b">{{ $item->pasien->no_rekam_medis }}</td>
                                <td class="px-4 py-2 border-b">{{ $item->keluhan }}</td>
                                <td class="px-4 py-2 border-b">
                                    @if ($item->periksa)
                                    <span class="inline-block px-2 py-1 text-xs font-semibold text-green-700 bg-green-100 rounded">Sudah</span>
                                    @else
                                    <span class="inline-block px-2 py-1 text-xs font-semibold text-red-700 bg-red-100 rounded">Belum</span>
                                    @endif
                                </td>
                                <td class="px-4 py-2 border-b">
                                    @if (!$item->periksa)
                                    <a href="{{ route('dokter.periksa.create', $item->id) }}" class="text-blue-600 hover:underline">Periksa</a>
                                    @else
                                    <a href="{{ route('dokter.periksa.show', $item->periksa->id) }}" class="text-gray-600 hover:underline">Lihat</a>

                                    @endif
                                </td>
                            </tr>
                            @empty
                            <tr>
                                <td colspan="6" class="px-4 py-4 text-center text-gray-500">
                                    Belum ada janji periksa pada jadwal ini.
                                </td>
                            </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>