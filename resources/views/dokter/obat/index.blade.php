<x-app-layout>
    <x-slot name="header">
        <h2 class="text-xl font-semibold leading-tight text-gray-800">
            {{ __('Daftar Obat') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="mx-auto space-y-6 max-w-7xl sm:px-6 lg:px-8">
            {{-- Display success or error message --}}
            @if (session('success'))
                <div class="alert alert-success">{{ session('success') }}</div>
            @elseif (session('error'))
                <div class="alert alert-danger">{{ session('error') }}</div>
            @endif

            <div class="p-4 bg-white shadow-sm sm:p-8 sm:rounded-lg">
                <header class="flex items-center justify-between mb-4">
                    <h2 class="text-lg font-medium text-gray-900">
                        {{ __('Daftar Obat') }}
                    </h2>
                    <div class="flex gap-2">
                        <a href="{{ route('dokter.obat.trashed') }}" class="btn btn-warning btn-sm">Lihat Obat yang Dihapus</a>
                        <a href="{{ route('dokter.obat.create') }}" class="btn btn-primary btn-sm">Tambah Obat Baru</a>
                    </div>
                </header>

                @if($obats->isEmpty())
                    <p class="text-sm text-gray-600">{{ __('Tidak ada data obat.') }}</p>
                @else
                    <table class="table mt-2 overflow-hidden rounded table-hover">
                        <thead class="thead-light">
                            <tr>
                                <th>Nama Obat</th>
                                <th>Kemasan</th>
                                <th>Harga</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($obats as $obat)
                                <tr>
                                    <td>{{ $obat->nama_obat }}</td>
                                    <td>{{ $obat->kemasan }}</td>
                                    <td>{{ 'Rp' . number_format($obat->harga, 0, ',', '.') }}</td>
                                    <td class="flex gap-2">
                                        <a href="{{ route('dokter.obat.edit', $obat->id) }}" class="btn btn-warning btn-sm">Edit</a>
                                        <form action="{{ route('dokter.obat.destroy', $obat->id) }}" method="POST" onsubmit="return confirm('Yakin ingin menghapus?')">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger btn-sm">Hapus</button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                @endif
            </div>
        </div>
    </div>
</x-app-layout>
