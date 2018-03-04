<div class="list-group">
    <a href="{{ route('yonetim.anasayfa') }}" class="list-group-item">
        <span class="fa fa-fw fa-dashboard"></span> Kontrol Paneli
    </a>
    <a href="{{ route('yonetim.urun') }}" class="list-group-item">
        <span class="fa fa-fw fa-cubes"></span> Ürünler
        <span class="badge badge-dark badge-pill pull-right">{{ $istatistikler['toplam_urun'] }}</span>
    </a>
    <a href="{{ route('yonetim.kategori') }}" class="list-group-item">
        <span class="fa fa-fw fa-folder"></span> Kategoriler
        <span class="badge badge-dark badge-pill pull-right">{{ $istatistikler['toplam_kategori'] }}</span>
    </a>
    <a href="#" class="list-group-item">
        <span class="fa fa-fw fa-comment"></span> Ürün Yorumları
    </a>
    <a href="#" class="list-group-item collapsed" data-target="#mnu_kategori_urunleri" data-toggle="collapse" data-parent="#sidebar"><span class="fa fa-fw fa-folder"></span> Kategori Ürünleri<span class="caret arrow"></span></a>
    <div class="list-group collapse" id="mnu_kategori_urunleri">
        <a href="#" class="list-group-item">Category</a>
        <a href="#" class="list-group-item">Category</a>
    </div>
    <a href="{{ route('yonetim.kullanici') }}" class="list-group-item">
        <span class="fa fa-fw fa-users"></span> Kullanıcılar
        <span class="badge badge-dark badge-pill pull-right">{{ $istatistikler['toplam_kullanici'] }}</span>
    </a>
    <a href="{{ route('yonetim.siparis') }}" class="list-group-item">
        <span class="fa fa-fw fa-shopping-cart"></span> Siparişler
        <span class="badge badge-dark badge-pill pull-right">
            {{ $istatistikler['bekleyen_siparis'] }}
        </span>
    </a>
    <a href="#" class="list-group-item collapsed" data-target="#mnu_raporlar" data-toggle="collapse" data-parent="#sidebar"><span class="fa fa-fw fa-pie-chart"></span> Raporlar<span class="caret arrow"></span></a>
    <div class="list-group collapse" id="mnu_raporlar">
        <a href="#" class="list-group-item">Çok Satan Ürünler</a>
        <a href="#" class="list-group-item">Günlere Göre Satışlar</a>
    </div>
    <a href="#" class="list-group-item">
        <span class="fa fa-fw fa-gear"></span> Site Ayarları
    </a>
</div>