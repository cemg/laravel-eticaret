<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Eticaret Projesi</title>
</head>
<body>
@php
$yas = 29;
@endphp
Merhaba {{ $isim . ' ' . $soyisim }}, {{ $yas }} yaşındasın.
<hr>
@if ($isim == 'Cem')
    Hoşgeldin Cem
@elseif ($isim == 'Esra')
    Hoşgeldin Esra
@else
    Hoşgeldin
@endif
<hr>
@switch($isim)
    @case('Cem')
    Hoşgeldin Cem
    @break

    @case('Esra')
    Hoşgeldin Esra
    @break

    @default
    Hoşgeldin
@endswitch
<hr>
@for($i=0; $i<=10; $i++)
    Döngü Değeri: {{ $i }}
@endfor
<hr>
@php
$i=0;
@endphp
@while($i<=10)
    Döngü Değeri: {{ $i }}
    @php
    $i++;
    @endphp
@endwhile
<hr>
@foreach($isimler as $isim)
    {{ $isim . ($isim !== end($isimler) ? ', ' : '') }}
@endforeach
<hr>
@foreach($kullanicilar as $kullanici)
    @continue($kullanici['id'] == 1)
    <li>{{ $kullanici['id'] . '-' . $kullanici['kullanici_adi'] }}</li>
    @break($kullanici['id'] == 4)
@endforeach
{{-- Yorum satırları --}}
<hr>
@php
$html = "<b>Test</b>";
@endphp
{!! $html !!}

</body>
</html>
