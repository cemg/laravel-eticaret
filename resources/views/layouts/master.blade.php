<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
<head>
    <meta charset="UTF-8">
    <title>@yield('title', config('app.name'))</title>
    @include('layouts.partials.head')
    @yield('head')
</head>
<body id="commerce">
@include('layouts.partials.navbar')
@yield('content')
@include('layouts.partials.footer')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="/js/app.js"></script>
@yield('footer')
</body>
</html>