<x-app-layout>
    <x-slot name="header">
        <h2 class="text-xl font-semibold leading-tight text-gray-800">
            Detail Pemeriksaan
        </h2>
    </x-slot>

    <div class="py-6">
        <div class="max-w-4xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white shadow rounded-lg overflow-hidden">

                <div class="bg-gray-100 px-6 py-4 border-b">
                    <h3 class="text-lg font-semibold text-gray-700 text-center">Hasil Pemeriksaan</h3>
                </div>

                <table class="min-w-full divide-y divide-gray-200">
                    <tbody class="divide-y divide-gray-200">
                        <tr class="bg-white">
                            <td class="px-6 py-4 font-medium text-gray-600">Tanggal Periksa</td>
                            <td class="px-6 py-4">{{ \Carbon\Carbon::parse($periksa->tgl_periksa)->format('d-m-Y') }}</td>
                        </tr>
                        <tr class="bg-gray-50">
                            <td class="px-6 py-4 font-medium text-gray-600">Diagnosa</td>
                            <td class="px-6 py-4">{{ $periksa->diagnosa }}</td>
                        </tr>
                        <tr class="bg-white">
                            <td class="px-6 py-4 font-medium text-gray-600">Tindakan</td>
                            <td class="px-6 py-4">{{ $periksa->tindakan }}</td>
                        </tr>
                        <tr class="bg-gray-50">
                            <td class="px-6 py-4 font-medium text-gray-600">Catatan</td>
                            <td class="px-6 py-4">{{ $periksa->catatan ?? '-' }}</td>
                        </tr>
                        <tr class="bg-white">
                            <td class="px-6 py-4 font-medium text-gray-600 align-top">Obat</td>
                            <td class="px-6 py-4">
                                @if ($periksa->detailPeriksas->isEmpty())
                                <span class="text-gray-500">Tidak ada obat yang diberikan.</span>
                                @else
                                <div class="overflow-x-auto">
                                    <table class="min-w-full text-sm border border-gray-300 rounded">
                                        <thead class="bg-gray-200 text-gray-700">
                                            <tr>
                                                <th class="px-4 py-2 border">Nama Obat</th>
                                                <th class="px-4 py-2 border">Kemasan</th>
                                                <th class="px-4 py-2 border">Harga</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($periksa->detailPeriksas as $detail)
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

                    </tbody>
                </table>

                <div class="px-6 py-4 text-right bg-gray-50">
                    <span class="font-semibold text-gray-700">Biaya Pemeriksaan:</span>
                    <span class="text-gray-800 ml-2">Rp {{ number_format($periksa->biaya_periksa, 0, ',', '.') }}</span>
                </div>

            </div>
        </div>
    </div>
</x-app-layout>