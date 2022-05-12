@extends('layouts.main')

@section('container')
<h1 class="mb-3 text-center">{{ $title }}</h1>

<div class="row justify-content-center">
    <div class="col-md-6">
        <form action="/blog">
            @if (request('category'))
            <input type="hidden" name="category" value="{{ request('category') }}">

            @endif

            @if (request('author'))
            <input type="hidden" name="author" value="{{ request('author') }}">

            @endif
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Search.." name="search" value="{{ request('search') }}">
                <button class="btn btn-warning" type="submit" id="button-addon2">Search</button>
              </div>
        </form>
    </div>
</div>

@if ($blog->count())
<div class="card mb-3">
    @if ($blog[0]->image)
              <div class="div" style="max-height: 350px; overflow:hidden;">
                <img src="{{ asset('storage/'. $blog[0]->image) }}" alt="{{  $blog[0]->category->name ?? 'none'  }}" class="img-fluid">
              </div>
              @else
              <img src="https://source.unsplash.com/1200x400/?{{ $blog[0]->category->name }}" class="card-img-top" alt="{{  $blog[0]->category->name  }}">
              @endif

    <div class="card-body text-center">
      <h3 class="card-title"> <a href="/blog/{{ $blog[0]->slug }}" class="text-decoration-none text-dark">{{ $blog[0]->title }}</a> </h3>
      <p class="card-text">{{ $blog[0]->excerpt }}</p>
      <small>
        By <a href="/blog?author={{ $blog[0]->author->username }}" class="text-decoration-none">{{ $blog[0]->author->name }}</a> in <a href="/blog?category={{ $blog[0]->category->slug }}" class="text-decoration-none">{{ $blog[0]->category->name }}</a>
      </small>
      <p class="card-text"><small class="text-muted">{{ $blog[0]->created_at->diffForHumans() }}</small></p>
      <a href="/blog/{{ $blog[0]->slug }}" class="text-decoration-none btn btn-primary">Read more</a>
    </div>
  </div>


<div class="container">
  <div class="row">
    @foreach ($blog->skip(1) as $b)
    <div class="col-md-4 mb-3">
      <div class="card">
        <div class="position-absolute bg-dark px-3 py-2 text-white"> <a href="/blog?category={{ $b->category->slug }}" class="text-decoration-none text-white">{{ $b->category->name }}</a></div>

        @if ($b->image)
              <div class="div" style="max-height: 350px; overflow:hidden;">
                <img src="{{ asset('storage/'. $b->image) }}" alt="{{  $b->category->name ?? 'none'  }}" class="img-fluid">
              </div>
              @else
              <img src="https://source.unsplash.com/1200x400/?{{ $b->category->name ?? 'none' }}" alt="{{  $b->category->name ?? 'none'  }}" class="img-fluid mt-3">
              @endif

        <div class="card-body">
          <h5 class="card-title">{{ $b->title }}</h5>
          <small>
            By <a href="/blog?author={{ $b->author->username }}" class="text-decoration-none">{{ $b->author->name }}</a>
          </small>
          <p class="card-text"><small class="text-muted">{{ $b->created_at->diffForHumans() }}</small></p>
          <p class="card-text">{{ $b->excerpt }}</p>
          <a href="/blog/{{ $b->slug }}" class="btn btn-primary">Read more</a>
        </div>
      </div>
    </div>
    @endforeach
  </div>
</div>

@else
  <p class="text-center fs-4">No Blog Found.</p>
@endif

<div class="d-flex justify-content-end">
    {{ $blog->links() }}
</div>

@endsection
