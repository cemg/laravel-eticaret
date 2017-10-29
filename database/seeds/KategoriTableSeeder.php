<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class KategoriTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('kategori')->truncate();
        
        $id = DB::table('kategori')->insertGetId(['kategori_adi'=>'Elektronik', 'slug'=>'elektronik']);
        DB::table('kategori')->insert(['kategori_adi'=>'Bilgisayar/Tablet', 'slug'=>'bilgisayar-tablet', 'ust_id'=>$id]);
        DB::table("kategori")->insert(['kategori_adi' => 'Telefon', 'slug' => 'telefon', 'ust_id'=> $id]);
        DB::table("kategori")->insert(['kategori_adi' => 'TV ve Ses Sistemleri', 'slug' => 'tv-ses-sistemleri', 'ust_id'=> $id]);
        DB::table("kategori")->insert(['kategori_adi' => 'Kamera', 'slug' => 'kamera', 'ust_id'=> $id]);
    
        $id = DB::table("kategori")->insertGetId(['kategori_adi' => 'Kitap', 'slug' => 'kitap']);
        DB::table("kategori")->insert(['kategori_adi' => 'Edebiyat', 'slug' => 'edebiyat', 'ust_id' => $id]);
        DB::table("kategori")->insert(['kategori_adi' => 'Çocuk', 'slug' => 'cocuk', 'ust_id' => $id]);
        DB::table("kategori")->insert(['kategori_adi' => 'Bilgisayar', 'slug' => 'bilgisayar', 'ust_id' => $id]);
        DB::table("kategori")->insert(['kategori_adi' => 'Sınavlara Hazırlık', 'slug' => 'sinavlara-hazirlik', 'ust_id' => $id]);
    
        DB::table("kategori")->insert(['kategori_adi' => 'Dergi', 'slug' => 'dergi']);
        DB::table("kategori")->insert(['kategori_adi' => 'Mobilya', 'slug' => 'mobilya']);
        DB::table("kategori")->insert(['kategori_adi' => 'Dekorasyon', 'slug' => 'dekorasyon']);
        DB::table("kategori")->insert(['kategori_adi' => 'Kozmetik', 'slug' => 'kozmetik']);
        DB::table("kategori")->insert(['kategori_adi' => 'Kişisel Bakım', 'slug' => 'kisisel-bakim']);
        DB::table("kategori")->insert(['kategori_adi' => 'Giyim ve Moda', 'slug' => 'giyim-moda']);
        DB::table("kategori")->insert(['kategori_adi' => 'Anne ve Çocuk', 'slug' => 'anne-cocuk']);
    }
}
