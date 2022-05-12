@extends('layouts.main')

@section('container')
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-8">
                <h1 class="mb-3">{{ $blog->title }}</h1>

                <p>By <a href="/blog?author={{ $blog->author->username }}" class="text-decoration-none">{{ $blog->author->name }}</a> in <a href="/blog?category={{ $blog->category->slug }}" class="text-decoration-none">{{ $blog->category->name }}</a></p>

                @if ($blog->image)
              <div class="div" style="max-height: 350px; overflow:hidden;">
                <img src="{{ asset('storage/'. $blog->image) }}" alt="{{  $blog->category->name ?? 'none'  }}" class="img-fluid">
              </div>
              @else
              <img src="https://source.unsplash.com/1200x400/?{{ $blog->category->name ?? 'none' }}" alt="{{  $blog->category->name ?? 'none'  }}" class="img-fluid mt-3">
              @endif

                <article class="my-3 fs-5">
                    {{-- Tanda { !! !! } Memperbolehkan menampilkan tag html --}}
                {!! $blog->body !!}
                </article>

                <a href="/blog" class="d-block mt-5">Kembali ke Blog</a>
            </div>
        </div>
    </div>
@endsection
