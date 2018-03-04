<?php

namespace App\Http\Controllers\Yonetim;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Siparis;
use Illuminate\Support\Facades\Cache;

class AnasayfaController extends Controller
{
    public function index()
    {
        if (!Cache::has('istatistikler')) {
            $istatistikler = [
                'bekleyen_siparis' => Siparis::where('durum', 'Siparişiniz alındı')->count()
            ];
    
            $bitisZamani = now()->addMinutes(10);
            Cache::put('istatistikler', $istatistikler, $bitisZamani);
        } else {
            $istatistikler = Cache::get('istatistikler');
        }
        
        //Cache::forget('istatistikler');
        //Cache::flush();
        
        return view('yonetim.anasayfa', compact('istatistikler'));
    }
}
