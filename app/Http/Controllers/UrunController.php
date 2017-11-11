<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Urun;

class UrunController extends Controller
{
    public function index($slug_urunadi)
    {
        $urun = Urun::whereSlug($slug_urunadi)->firstOrFail();
        $kategoriler = $urun->kategoriler()->distinct()->get();
        return view('urun', compact('urun', 'kategoriler'));
    }
}
