<?php

namespace App\Http\Controllers;

use App\Models\Urun;
use Cart;
use Validator;

class SepetController extends Controller
{
    public function index()
    {
        return view('sepet');
    }
    
    public function ekle()
    {
        $urun = Urun::find(request('id'));
        Cart::add($urun->id, $urun->urun_adi, 1, $urun->fiyati, ['slug' => $urun->slug]);
        
        return redirect()->route('sepet')
            ->with('mesaj_tur', 'success')
            ->with('mesaj', 'Ürün sepete eklendi.');
    }
    
    public function kaldir($rowid)
    {
        Cart::remove($rowid);
        
        return redirect()->route('sepet')
            ->with('mesaj_tur', 'success')
            ->with('mesaj', 'Ürün sepetten kaldırıldı.');
    }
    
    public function bosalt()
    {
        Cart::destroy();
        
        return redirect()->route('sepet')
            ->with('mesaj_tur', 'success')
            ->with('mesaj', 'Sepetiniz boşaltıldı.');
    }
    
    public function guncelle($rowid)
    {
        $validator = Validator::make(request()->all(), [
            'adet' => 'required|numeric|between:0,5'
        ]);
        
        if ($validator->fails()) {
            session()->flash('mesaj_tur', 'danger');
            session()->flash('mesaj', 'Adet değeri en az 1 en fazla 5 olabilir!');
            
            return response()->json(['success' => false]);
        }
        
        Cart::update($rowid, request('adet'));
        
        session()->flash('mesaj_tur', 'success');
        session()->flash('mesaj', 'Adet bilgisi güncellendi');
        
        return response()->json(['success' => true]);
    }
}
