<x-guest-layout>
    @if (session('status'))
        <div class="{{ session('status') === 'success' ? 'bg-green-500' : 'bg-red-500' }} text-white p-4 rounded-md mb-4">
            {{ session('message') }}
        </div>
    @endif

    @if ($errors->any())
        <div class="bg-red-500 text-white p-4 rounded-md mb-4">
            <ul class="list-disc list-inside">
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <h2 class="text-center text-2xl font-semibold mb-3">{{ __('Register') }}</h2>

    <form method="POST" action="{{ route('register') }}">
        @csrf

        <div class="flex flex-col gap-4">
            <!-- Nama -->
            <div>
                <x-input-label for="nama" :value="__('Nama Lengkap')" />
                <x-text-input id="nama" class="block mt-1 w-full" type="text" name="nama" :value="old('nama')" required autofocus autocomplete="name" />
                <x-input-error :messages="$errors->get('nama')" class="mt-2" />
            </div>

            <!-- Email -->
            <div>
                <x-input-label for="email" :value="__('Email')" />
                <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autocomplete="email" />
                <x-input-error :messages="$errors->get('email')" class="mt-2" />
            </div>

            <!-- No KTP -->
            <div>
                <x-input-label for="no_ktp" :value="__('No KTP')" />
                <x-text-input id="no_ktp" class="block mt-1 w-full" type="text" name="no_ktp" :value="old('no_ktp')" required maxlength="16" autocomplete="off" />
                <x-input-error :messages="$errors->get('no_ktp')" class="mt-2" />
            </div>

            <!-- No HP -->
            <div>
                <x-input-label for="no_hp" :value="__('No HP')" />
                <x-text-input id="no_hp" class="block mt-1 w-full" type="text" name="no_hp" :value="old('no_hp')" required maxlength="12" autocomplete="off" />
                <x-input-error :messages="$errors->get('no_hp')" class="mt-2" />
            </div>

            <!-- Alamat -->
            <div>
                <x-input-label for="alamat" :value="__('Alamat')" />
                <x-text-input id="alamat" class="block mt-1 w-full" type="text" name="alamat" :value="old('alamat')" required autocomplete="street-address" />
                <x-input-error :messages="$errors->get('alamat')" class="mt-2" />
            </div>
        </div>

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="password" :value="__('Password')" />
            <x-text-input id="password" class="block mt-1 w-full"
                          type="password"
                          name="password"
                          required autocomplete="new-password" />
            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Confirm Password -->
        <div class="mt-4">
            <x-input-label for="password_confirmation" :value="__('Confirm Password')" />
            <x-text-input id="password_confirmation" class="block mt-1 w-full"
                          type="password"
                          name="password_confirmation" required autocomplete="new-password" />
            <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
        </div>

        <div class="flex items-center justify-end mt-4">
            <a href="{{ route('login') }}" class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                {{ __('Already registered?') }}
            </a>

            <x-primary-button class="ms-4">
                {{ __('Register') }}
            </x-primary-button>
        </div>
    </form>
</x-guest-layout>
