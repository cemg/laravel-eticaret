<?php

namespace App\Http\Controllers\Yonetim;

use App\Http\Controllers\Controller;
use App\Models\Kategori;

class KategoriController extends Controller
{
    public function index()
    {
        if (request()->filled('aranan') || request()->filled('ust_id')) {
            request()->flash();
            $aranan = request('aranan');
            $ust_id = request('ust_id');
            $list = Kategori::with('ust_kategori')
                ->where('kategori_adi', 'like', "%$aranan%")
                ->where('ust_id', $ust_id)
                ->orderByDesc('id')
                ->paginate(2)
                ->appends(['aranan' => $aranan, 'ust_id' => $ust_id]);
        } else {
            request()->flush();
            $list = Kategori::with('ust_kategori')->orderByDesc('id')->paginate(8);
        }
        
        $anakategoriler = Kategori::whereRaw('ust_id is null')->get();
        
        return view('yonetim.kategori.index', compact('list', 'anakategoriler'));
    }
    
    public function form($id = 0)
    {
        $entry = new Kategori;
        if ($id > 0) {
            $entry = Kategori::find($id);
        }
        
        $kategoriler = Kategori::all();
        
        return view('yonetim.kategori.form', compact('entry', 'kategoriler'));
    }
    
    public function kaydet($id = 0)
    {
        $data = request()->only('kategori_adi', 'slug', 'ust_id');
        if (!request()->filled('slug')) {
            $data['slug'] = str_slug(request('kategori_adi'));
            request()->merge(['slug' => $data['slug']]);
        }
        
        $this->validate(request(), [
            'kategori_adi' => 'required',
            'slug'         => (request('original_slug') != request('slug') ? 'unique:kategori,slug' : '')
        ]);
        
        if ($id > 0) {
            $entry = Kategori::where('id', $id)->firstOrFail();
            $entry->update($data);
        } else {
            $entry = Kategori::create($data);
        }
        
        return redirect()
            ->route('yonetim.kategori.duzenle', $entry->id)
            ->with('mesaj', ($id > 0 ? 'Güncellendi' : 'Kaydedildi'))
            ->with('mesaj_tur', 'success');
    }
    
    public function sil($id)
    {
        $kategori = Kategori::find($id);
        $kategori_urun_adet = $kategori->urunler()->count();
        if ($kategori_urun_adet>0)
        {
            return redirect()
                ->route('yonetim.kategori')
                ->with('mesaj', "Bu kategoride $kategori_urun_adet adet ürün var. Bu yüzden silme işlemi yapılmamıştır.")
                ->with('mesaj_tur', 'warning');    
        }
        $kategori->urunler()->detach();
        $kategori->delete();
        
        return redirect()
            ->route('yonetim.kategori')
            ->with('mesaj', 'Kayıt silindi')
            ->with('mesaj_tur', 'success');
    }
}
