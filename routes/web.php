<?php

Route::get('/', 'AnasayfaController@index')->name('anasayfa');

Route::get('/kategori/{slug_kategoriadi}', 'KategoriController@index')->name('kategori');

Route::get('/urun/{slug_urunadi}', 'UrunController@index')->name('urun');

Route::post('/ara', 'UrunController@ara')->name('urun_ara');
Route::get('/ara', 'UrunController@ara')->name('urun_ara');

Route::get('/sepet', 'SepetController@index')->name('sepet');

Route::get('/odeme', 'OdemeController@index')->name('odeme');

Route::get('/siparisler', 'SiparisController@index')->name('siparisler');

Route::get('/siparisler/{id}', 'SiparisController@detay')->name('siparis');

Route::group(['prefix'=> 'kullanici'], function() {
    Route::get('/oturumac', 'KullaniciController@giris_form')->name('kullanici.oturumac');
    Route::get('/kaydol', 'KullaniciController@kaydol_form')->name('kullanici.kaydol');
});