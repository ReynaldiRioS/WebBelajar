@extends('layouts.main')

@section('container')
<h1>Halaman About</h1>
<h1>{{ $name }}</h1>
<h1>{{ $email }}</h1>
<img src="img/{{ $gambar }}" alt="{{ $name }}" width="200" class="img-thumbnail rounded-circle">
@endsection
