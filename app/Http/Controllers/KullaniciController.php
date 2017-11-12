<?php

namespace App\Http\Controllers;

use App\Mail\KullaniciKayitMail;
use App\Models\Kullanici;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;

class KullaniciController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest')->except('oturumukapat');
    }
    
    public function giris_form()
    {
        return view('kullanici.oturumac');
    }
    
    public function giris()
    {
        $this->validate(request(), [
            'email' => 'required|email',
            'sifre' => 'required'
        ]);
        
        if (auth()->attempt(['email' => request('email'), 'password' => request('sifre')], request()->has('benihatirla'))) {
            request()->session()->regenerate();
            
            return redirect()->intended('/');
        } else {
            $errors = ['email' => 'Hatalı giriş'];
            
            return back()->withErrors($errors);
        }
    }
    
    public function kaydol_form()
    {
        return view('kullanici.kaydol');
    }
    
    public function kaydol()
    {
        $this->validate(request(), [
            'adsoyad' => 'required|min:5|max:60',
            'email'   => 'required|email|unique:kullanici',
            'sifre'   => 'required|confirmed|min:5|max:15'
        ]);
        
        $kullanici = Kullanici::create([
            'adsoyad'             => request('adsoyad'),
            'email'               => request('email'),
            'sifre'               => Hash::make(request('sifre')),
            'aktivasyon_anahtari' => Str::random(60),
            'aktif_mi'            => 0
        ]);
        
        Mail::to(request('email'))->send(new KullaniciKayitMail($kullanici));
        
        auth()->login($kullanici);
        
        return redirect()->route('anasayfa');
    }
    
    public function aktiflestir($anahtar)
    {
        $kullanici = Kullanici::where('aktivasyon_anahtari', $anahtar)->first();
        if (!is_null($kullanici)) {
            $kullanici->aktivasyon_anahtari = null;
            $kullanici->aktif_mi = 1;
            $kullanici->save();
            
            return redirect()->to('/')
                ->with('mesaj', 'Kullanıcı kaydınız aktifleştirildi')
                ->with('mesaj_tur', 'success');
        } else {
            return redirect()->to('/')
                ->with('mesaj', 'Kullanıcı kaydınız aktifleştirilemedi')
                ->with('mesaj_tur', 'warning');
        }
    }
    
    public function oturumukapat()
    {
        auth()->logout();
        request()->session()->flush();
        request()->session()->regenerate();
        return redirect()->route('anasayfa');
    }
}
