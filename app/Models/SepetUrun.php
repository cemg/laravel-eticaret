<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SepetUrun extends Model
{
    use SoftDeletes;
    
    protected $table = "sepet_urun";
    protected $guarded = [];
    
    const CREATED_AT = 'olusturma_tarihi';
    const UPDATED_AT = 'guncelleme_tarihi';
    const DELETED_AT = 'silinme_tarihi';
    
    public function urun()
    {
        return $this->belongsTo('App\Models\Urun');
    }
}
