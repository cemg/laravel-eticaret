<?php

Route::get('/', 'AnasayfaController@index')->name('anasayfa');

Route::view('/kategori', 'kategori');
Route::view('/urun', 'urun');
Route::view('/sepet', 'sepet');