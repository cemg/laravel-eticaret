@extends('layouts.master')
@section('content')
<div class="container">
    <div class="jumbotron text-center">
        <h1>500</h1>
        <h2>Bir hata oluştu!</h2>
        <a href="{{ route('anasayfa') }}" class="btn btn-primary">Anasayfa'ya Dön</a>
    </div>
</div>
@endsection