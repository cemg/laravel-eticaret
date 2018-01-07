<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call(KategoriTableSeeder::class);
        $this->call(UrunTableSeeder::class);
        $this->call(KullaniciTableSeeder::class);
    }
}
