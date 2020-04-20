@extends('layouts.master')
@section('title', $kategori->kategori_adi)
@section('content')
    <div class="container">
        <ol class="breadcrumb">
            <li><a href="{{ route('anasayfa') }}">Anasayfa</a></li>
            <li class="active">{{ $kategori->kategori_adi }}</li>
        </ol>
        <div class="row">
            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">{{ $kategori->kategori_adi }}</div>
                    <div class="panel-body">
						Toplam {{ $kategori->urunler->count() }} ürün var.
						<hr>
                        @if (count($alt_kategoriler)>0)
                        
                        </div>
                        @else
                            @if ($ust_kategori != null)
                                <a href="{{ route('kategori', $ust_kategori->slug) }}" class="btn btn-xs btn-block btn-primary">
                                    <i class="fa fa-arrow-circle-left"></i>
                                    {{ $ust_kategori->kategori_adi }}
                                </a>
                            @endif

                            {{ $kategori->kategori_adi }} kategorisinde başka alt kategori bulunmuyor.
                        @endif
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="products bg-content">
                    @if (count($urunler)>0)
                    Sırala
                    <a href="?order=coksatanlar" class="btn btn-default">Çok Satanlar</a>
                    <a href="?order=yeni" class="btn btn-default">Yeni Ürünler</a>
                    <hr>
                    @endif
                    <div class="row">
                        @if (count($urunler)==0)
                            <div class="col-md-12">Bu kategoride henüz ürün bulunmamaktadır!</div>
                        @endif
                        @foreach($urunler as $urun)
                            <div class="col-md-4 product">
                                <a href="{{ route('urun', $urun->slug) }}">
                                    <img src="{{ $urun->detay->urun_resmi!=null ? asset('uploads/urunler/' . $urun->detay->urun_resmi) : 'http://via.placeholder.com/400x400?text=UrunResmi' }}">
                                </a>
                                <p><a href="{{ route('urun', $urun->slug) }}">{{ $urun->urun_adi }}</a></p>
                                <p class="price">{{ round($urun->fiyati, 2) }} ₺</p>
                                <p><a href="#" class="btn btn-theme">Sepete Ekle</a></p>
                            </div>
                        @endforeach
                    </div>
                    {{ request()->has('order') ? $urunler->appends(['order' => request('order')])->links() : $urunler->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection