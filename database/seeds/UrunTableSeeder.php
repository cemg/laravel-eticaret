<?php

use Illuminate\Database\Seeder;

class UrunTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table("urun")->insert([
            'urun_adi' => str_random(10),
            'fiyati'   => rand(10, 99) / 10
        ]);
    }
}
