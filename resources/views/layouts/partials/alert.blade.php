@if (session()->has('mesaj'))
    <div class="alert alert-{{ session('mesaj_tur') }}">{{ session('mesaj') }}</div>
@endif