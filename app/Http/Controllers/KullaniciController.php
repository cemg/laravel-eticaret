<?php

namespace App\Http\Controllers;

use App\Models\Kullanici;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class KullaniciController extends Controller
{
    public function giris_form()
    {
        return view('kullanici.oturumac');
    }
    
    public function kaydol_form()
    {
        return view('kullanici.kaydol');
    }
    
    public function kaydol()
    {
        $kullanici = Kullanici::create([
            'adsoyad'             => request('adsoyad'),
            'email'               => request('email'),
            'sifre'               => Hash::make(request('sifre')),
            'aktivasyon_anahtari' => Str::random(60),
            'aktif_mi'            => 0
        ]);
        
        auth()->login($kullanici);
        
        return redirect()->route('anasayfa');
    }
}
