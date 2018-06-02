<?php

namespace App\Http\Controllers\Yonetim;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Models\Siparis;

class AnasayfaController extends Controller
{
    public function index()
    {
        $cok_satan_urunler = DB::select("
            SELECT u.urun_adi, SUM(su.adet) adet
            FROM siparis si
            INNER JOIN sepet s ON s.id = si.sepet_id
            INNER JOIN sepet_urun su ON s.id = su.sepet_id
            INNER JOIN urun u ON u.id = su.urun_id
            GROUP BY u.urun_adi
            ORDER BY SUM(su.adet) DESC
        ");

        /*$cok_satan_urunler = Siparis::select(DB::raw('urun.urun_adi, SUM(sepet_urun.adet) as adet'))
            ->join('sepet', 'sepet.id', 'siparis.sepet_id')
            ->join('sepet_urun', 'sepet.id', 'sepet_urun.sepet_id')
            ->join('urun', 'urun.id', 'sepet_urun.urun_id')
            ->groupBy('urun_adi')
            ->orderBy(DB::raw('SUM(sepet_urun.adet)'), 'desc')
            ->get();*/
        
        $aylara_gore_satislar = DB::select("
            SELECT
              DATE_FORMAT(si.olusturma_tarihi, '%Y-%m') ay, sum(su.adet) adet
            FROM siparis si
            INNER JOIN sepet s on s.id = si.sepet_id
            INNER JOIN sepet_urun su on s.id=su.sepet_id
            GROUP BY DATE_FORMAT(si.olusturma_tarihi, '%Y-%m')
            ORDER BY DATE_FORMAT(si.olusturma_tarihi, '%Y-%m')
        ");
    
        return view('yonetim.anasayfa', compact('cok_satan_urunler', 'aylara_gore_satislar'));
    }
}
