@extends('layouts.master')
@section('title', 'Siparişler')
@section('content')
    <div class="container">
        <div class="bg-content">
            <h2>Siparişler</h2>
            @if (count($siparisler) == 0)
                <p>Henüz siparişiniz yok</p>
            @else
            <table class="table table-bordererd table-hover">
                <tr>
                    <th>Sipariş Kodu</th>
                    <th>Tutar</th>
                    <th>Toplam Ürün</th>
                    <th>Durum</th>
                    <th></th>
                </tr>
                @foreach($siparisler as $siparis)
                <tr>
                    <td>SP-{{ $siparis->id }}</td>
                    <td>{{ $siparis->siparis_tutari * ((100+config('cart.tax'))/100) }}</td>
                    <td>{{ $siparis->sepet->sepet_urun_adet() }}</td>
                    <td>{{ $siparis->durum }}</td>
                    <td><a href="{{ route('siparis', $siparis->id) }}" class="btn btn-sm btn-success">Detay</a></td>
                </tr>
                @endforeach
            </table>
            @endif
        </div>
    </div>
@endsection