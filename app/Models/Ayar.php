<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ayar extends Model
{
    protected $table = 'ayar';
    public $timestamps = false;
    protected $fillable = ['anahtar', 'deger'];
}
