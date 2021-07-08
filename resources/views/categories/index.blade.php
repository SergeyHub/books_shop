@extends('layouts.app')

@section('content')
    <div class="container">
        @if (count($categories) > 0)
            <div class="row">
                @foreach ($categories as $category)
                    <div class="col-md-4">
                        <div class="card mb-4 shadow-sm">
                            <div class="card-body">
                                <p class="card-text">{{ $category->description }}</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <a href="{{ route('category-show', $category->id) }}"
                                           class="btn btn-sm btn-outline-secondary">View
                                        </a>
                                    </div>
                                    <small class="text-muted">{{ $category->name }}</small>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        @else
            <h3>No categories yet.</h3>
        @endif
    </div>
@endsection