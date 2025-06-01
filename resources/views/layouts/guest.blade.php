<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

    <!-- Scripts -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="bg-white">
  <div class="min-h-screen bg-blue-500">
    <div class="h-1/2 bg-blue-500"></div>
    <div class="h-1/2 bg-white"></div>
    <div class="min-h-screen flex flex-col sm:justify-center items-center pt-6 sm:pt-0">
        <!-- style="background-image: url('https://4.bp.blogspot.com/-YWuX5LISxoI/WLw6WCBJBKI/AAAAAAAAC1c/xGnw4xF8tFw6oMgdf2Bip1dT7dN6PZ3WQCLcB/s1600/udinus-campus.jpg'); background-size: cover; background-position: center;"> -->
        <div>
            <a href="/">
                <x-application-logo class="w-20 h-20 fill-current text-gray-500" />
            </a>
        </div>

        <div class="w-full sm:max-w-md mt-6 px-6 py-4 bg-white/90 backdrop-blur-md shadow-md ring-1 ring-gray-200 rounded-lg">
            {{ $slot }}
        </div>

    </div>
</body>

</html>