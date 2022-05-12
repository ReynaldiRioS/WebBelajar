@extends('dashboard.layouts.main')

@section('container')

<div class="container">
    <div class="row my-3">
        <div class="col-md-8">
            <h1 class="mb-3">{{ $blog->title }}</h1>

            <a href="/dashboard/blog" class="btn btn-success"><span data-feather="arrow-left"></span> Back to all my blog</a>

            <a href="/dashboard/blog/{{ $blog->slug }}/edit" class="btn btn-warning"><span data-feather="edit"></span> Edit</a>


            <form class="d-inline" action="/dashboard/blog/{{ $blog->slug }}" method="post">
                @method('delete')
                @csrf
                <button class="btn btn-danger" onclick="return confirm('Are you sure?')"><span data-feather="x-circle"></span> Delete</button>
              </form>

              @if ($blog->image)
              <div class="div" style="max-height: 350px; overflow:hidden;">
                <img src="{{ asset('storage/'. $blog->image) }}" alt="{{  $blog->category->name ?? 'none'  }}" class="img-fluid mt-3">
              </div>
              @else
              <img src="https://source.unsplash.com/1200x400/?{{ $blog->category->name ?? 'none' }}" alt="{{  $blog->category->name ?? 'none'  }}" class="img-fluid mt-3">
              @endif

            <article class="my-3 fs-5">
                {{-- Tanda { !! !! } Memperbolehkan menampilkan tag html --}}
            {!! $blog->body !!}
            </article>
        </div>
    </div>
</div>

@endsection
