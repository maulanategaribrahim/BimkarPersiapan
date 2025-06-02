<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Buat Pemeriksaan Baru') }}
        </h2>
    </x-slot>

    <div class="py-6 max-w-3xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white shadow-sm rounded-lg p-6">
            <form action="{{ route('dokter.periksa.store') }}" method="POST">
                @csrf

                <input type="hidden" name="id_janji_periksa" value="{{ $janji->id }}">

                <div class="mb-4">
                    <label for="tgl_periksa" class="block font-medium text-sm text-gray-700">Tanggal Pemeriksaan</label>
                    <input type="date" name="tgl_periksa" id="tgl_periksa" class="border rounded w-full" required>
                </div>

                <div class="mb-4">
                    <label for="diagnosa" class="block font-medium text-sm text-gray-700">Diagnosa</label>
                    <input type="text" name="diagnosa" id="diagnosa" class="border rounded w-full" required>
                </div>

                <div class="mb-4">
                    <label for="tindakan" class="block font-medium text-sm text-gray-700">Tindakan</label>
                    <input type="text" name="tindakan" id="tindakan" class="border rounded w-full" required>
                </div>

                <div class="mb-4">
                    <label for="catatan" class="block font-medium text-sm text-gray-700">Catatan</label>
                    <textarea name="catatan" id="catatan" rows="4" class="border rounded w-full"></textarea>
                </div>

                <div class="mb-4">
                    <label for="biaya_periksa" class="block font-medium text-sm text-gray-700">Biaya Pemeriksaan (Rp)</label>
                    <input type="number" name="biaya_periksa" id="biaya_periksa" class="border rounded w-full" value="150000" readonly>
                </div>

                <div class="mb-4">
                    <label for="obat_id" class="block font-medium text-sm text-gray-700">Obat</label>
                    <select name="obat_id[]" id="obat_id" multiple class="border rounded w-full">
                        @foreach($obats as $obat)
                        <option value="{{ $obat->id }}" data-harga="{{ $obat->harga }}">
                            {{ $obat->nama_obat }} (Rp{{ number_format($obat->harga, 0, ',', '.') }})
                        </option>
                        @endforeach
                    </select>
                    <small class="text-gray-500">Gunakan Ctrl (Windows) / Cmd (Mac) untuk pilih lebih dari satu</small>
                </div>

                <div class="mt-6">
                    <button type="submit" class="px-4 py-2 bg-blue-600 text-white rounded">Simpan Pemeriksaan</button>
                </div>
            </form>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const biayaDasar = 150000;
            const selectObat = document.getElementById('obat_id');
            const inputBiaya = document.getElementById('biaya_periksa');

            selectObat.addEventListener('change', function () {
                let totalObat = 0;

                Array.from(selectObat.selectedOptions).forEach(option => {
                    const harga = parseInt(option.getAttribute('data-harga')) || 0;
                    totalObat += harga;
                });

                inputBiaya.value = biayaDasar + totalObat;
            });
        });
    </script>
</x-app-layout>
