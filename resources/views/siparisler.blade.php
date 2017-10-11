@extends('layouts.master')
@section('title', 'Siparişler')
@section('content')
    <div class="container">
        <div class="bg-content">
            <h2>Siparişler</h2>
            <p>Henüz siparişiniz yok</p>
            <table class="table table-bordererd table-hover">
                <tr>
                    <th>Sipariş Kodu</th>
                    <th>Sipariş Tarihi</th>
                    <th>KDV</th>
                    <th>Kargo</th>
                    <th>Toplam Tutar</th>
                    <th>Durum</th>
                    <th>İşlem</th>
                </tr>
                <tr>
                    <td>SP-00123</td>
                    <td>25.09.2017</td>
                    <td>2.99</td>
                    <td>0</td>
                    <td>18.99</td>
                    <td>
                        Sipariş alındı, <br> Onaylandı, <br> Kargoya verildi, <br> Bir sorun var. İletişime geçin!
                    </td>
                    <td><a href="#" class="btn btn-sm btn-success">Detay</a></td>
                </tr>
            </table>
        </div>
    </div>
@endsection