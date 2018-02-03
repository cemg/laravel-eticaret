<?php

namespace App\Http\Controllers;

use App\Models\Kategori;

class KategoriController extends Controller
{
    public function index($slug_kategoriadi)
    {
        $kategori = Kategori::where('slug', $slug_kategoriadi)->firstOrFail();
        $alt_kategoriler = Kategori::where('ust_id', $kategori->id)->get();
        $ust_kategori = Kategori::find($kategori->ust_id);
        
        $order = request('order');
        if ($order == 'coksatanlar') {
            
            $urunler = $kategori->urunler()
                ->distinct()
                ->join('urun_detay', 'urun_detay.urun_id', 'urun.id')
                ->orderBy('urun_detay.goster_cok_satan', 'desc')
                ->paginate(3);
            
        } else if ($order == 'yeni') {
            $urunler = $kategori->urunler()
                ->distinct()
                ->orderByDesc('guncelleme_tarihi')
                ->paginate(3);
        } else {
            $urunler = $kategori->urunler()
                ->distinct()
                ->orderByDesc('guncelleme_tarihi')
                ->paginate(3);
        }
        
        if (request('page') > $urunler->lastPage())
            return redirect()->route('kategori', $kategori->slug);
        
        return view('kategori', compact('kategori', 'alt_kategoriler', 'ust_kategori', 'urunler'));
    }
}
