<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Urun extends Model
{
    use SoftDeletes;
    
    protected $table = "urun";
    
    protected $guarded = [];
    
    const CREATED_AT = 'olusturma_tarihi';
    const UPDATED_AT = 'guncelleme_tarihi';
    const DELETED_AT = 'silinme_tarihi';
    
    public function kategoriler()
    {
        return $this->belongsToMany('App\Models\Kategori', 'kategori_urun');
    }
    
    public function detay()
    {
        return $this->hasOne('App\Models\UrunDetay')->withDefault();
    }
}
