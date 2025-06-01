<x-app-layout>
    <x-slot name="header">
        <h2 class="text-xl font-semibold leading-tight text-gray-800">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="mx-auto max-w-7xl sm:px-6 lg:px-8 space-y-6">
            <div class="p-6 bg-white shadow sm:rounded-lg flex items-center space-x-6">
                <img src="https://tse1.mm.bing.net/th?id=OIP.B4o5FwVSs7b61LxuojUz-wHaHa&pid=Api&P=0&h=220" alt="Foto Dokter" class="w-24 h-24 rounded-full object-cover border">
                <div>
                    <h3 class="text-2xl font-bold text-gray-900">Dr. {{ Auth::user()->nama }}</h3>
                    <p class="text-gray-600">Spesialis: {{ Auth::user()->poli->nama_poli ?? '-' }}</p>
                    <p class="text-gray-500 text-sm">Login sebagai: <strong>Dokter</strong></p>
                </div>
            </div>

            <div class="p-6 bg-white shadow sm:rounded-lg">
                <h4 class="text-lg font-semibold text-gray-800 mb-4">Jadwal Periksa Aktif</h4>
                @if ($jadwalAktif->count() > 0)
                <ul class="list-disc list-inside space-y-2">
                    @foreach ($jadwalAktif as $jadwal)
                    <li>
                        <span class="font-medium">{{ $jadwal->hari }}</span>:
                        {{ \Carbon\Carbon::parse($jadwal->jam_mulai)->format('H:i') }} -
                        {{ \Carbon\Carbon::parse($jadwal->jam_selesai)->format('H:i') }}
                    </li>
                    @endforeach
                </ul>
                @else
                <p class="text-gray-600">Belum ada jadwal aktif.</p>
                @endif
            </div>
        </div>
    </div>
</x-app-layout>