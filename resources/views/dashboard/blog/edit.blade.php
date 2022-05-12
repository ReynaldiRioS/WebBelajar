@extends('dashboard.layouts.main')

@section('container')

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit Blog</h1>
  </div>

  <div class="col-lg-8">

      <form method="post" action="/dashboard/blog/{{ $blog->slug }}" class="mb-5" enctype="multipart/form-data">
        @method('put')
        @csrf
        <div class="mb-3">
          <label for="title" class="form-label">Title</label>
          <input type="text" class="form-control @error('title') is-invalid @enderror" id="title" name="title" value="{{ old('title', $blog->title) }}">
          @error('title')
              <div class="invalid-feedback">
                  {{ $message }}
              </div>
          @enderror
        </div>

        <div class="mb-3">
          <label for="slug" class="form-label">Slug</label>
          <input type="text" class="form-control @error('slug') is-invalid @enderror" id="slug" name="slug" placeholder="Example: web-programming" value="{{ old('slug', $blog->slug) }}">
          @error('slug')
              <div class="invalid-feedback">
                  {{ $message }}
              </div>
          @enderror
        </div>

        <div class="mb-3">
          <label for="category" class="form-label">Category</label>
          <select class="form-select" name="category_id">
              @foreach ($categories as $category)
            @if (old('category_id', $blog->category->id) == $category->id)

              <option value="{{ $category->id }}" selected>{{ $category->name }}</option>
              @else
              <option value="{{ $category->id }}">{{ $category->name }}</option>
              @endif
              @endforeach
           </select>
        </div>

        <div class="mb-3">
            <label for="image" class="form-label">Post Image</label>
            <input type="hidden" name="oldimage" value="{{ $blog->image }}">

            @if ($blog->image)
                <img src="{{ asset('storage/' .$blog->image) }}" class="img-preview img-fluid mb-3 col-sm-5 d-block" alt="">
            @else
            <img class="img-preview img-fluid mb-3 col-sm-5 d-block" alt="">
            @endif
            <input class="form-control @error('image') is-invalid @enderror" type="file" id="image" name="image">
            @error('image')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
        @enderror
          </div>

        <div class="mb-3">
            <label for="body" class="form-label">Body</label>
            @error('body')

            <p class="text-danger">{{ $message }}</p>
            @enderror
            <input id="body" type="hidden" name="body" value="{{ old('body', $blog->body) }}">
             <trix-editor input="body"></trix-editor>
          </div>

        <button type="submit" class="btn btn-primary">Update Blog</button>
      </form>
  </div>

  <script>
      document.addEventListener('trix-file-accept', function(e) {
          e.preventDefault();
      })
  </script>

@endsection
