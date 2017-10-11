@extends('layouts.master')
@section('title', 'Sepet')
@section('content')
    <div class="container">
        <div class="bg-content">
            <h2>Sepet</h2>
            <table class="table table-bordererd table-hover">
                <tr>
                    <th>Ürün</th>
                    <th>Tutar</th>
                    <th>Adet</th>
                    <th>Ara Toplam</th>
                    <th>İşlem</th>
                </tr>
                <tr>
                    <td colspan="5">Henüz sepette ürün yok</td>
                </tr>
                <tr>
                    <td> <img src="http://lorempixel.com/120/100/food/2"> Ürün adı</td>
                    <td>18.99</td>
                    <td>
                        <a href="#" class="btn btn-xs btn-default">-</a>
                        <span style="padding: 10px 20px">1</span>
                        <a href="#" class="btn btn-xs btn-default">+</a>
                    </td>
                    <td>18.99</td>
                    <td>
                        <a href="#">Sil</a>
                    </td>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                    <th>Toplam Tutar (KDV Dahil)</th>
                    <th>18.99</th>
                    <th></th>
                </tr>
            </table>
            <div>
                <a href="#" class="btn btn-info pull-left">Sepeti Boşalt</a>
                <a href="#" class="btn btn-success pull-right btn-lg">Ödeme Yap</a>
            </div>
        </div>
    </div>
@endsection