<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Kategori extends Model
{
    use SoftDeletes;
    
    protected $table = "kategori";
    //protected $fillable = ['kategori_adi', 'slug'];
    protected $guarded = [];
    const CREATED_AT = 'olusturma_tarihi';
    const UPDATED_AT = 'guncelleme_tarihi';
    const DELETED_AT = 'silinme_tarihi';
    
    public function urunler()
    {
        return $this->belongsToMany('App\Models\Urun', 'kategori_urun');
    }
    
    public function ust_kategori() {
        return $this->belongsTo('App\Models\Kategori', 'ust_id')->withDefault([
            'kategori_adi' => 'Ana Kategori'
        ]);
    }
}
