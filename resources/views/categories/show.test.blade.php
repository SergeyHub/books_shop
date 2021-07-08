@extends('layouts.app')

@section('content')
    <section class="jumbotron text-center">
        <div class="container">
            <h1 class="jumbotron-heading">{{ $category->name }}</h1>
            <p class="lead text-muted">{{ $category->description }}</p>
            <p>
                <a href="{{ route('product-create', $category->id) }}"
                   class="btn btn-primary my-2">Insert new book</a>
                <a href="/" class="btn btn-secondary my-2">Go Back</a>
            </p>
        </div>
    </section>

    @if (count($category->products) > 0)
        <div class="container">
            <div class="row">
                @foreach ($category->products as $products)
                    <div class="col-md-4">
                        <div class="card mb-4 shadow-sm">
                            <img src="/storage/category/{{ $category->id }}/{{ $products->photo }}"
                                 alt="{{ $products->photo }}" height="164px" width="125">
                            <!--<div class="card-body">-->
                            <p class="card-text">{{ $products->title }}</p>
                            <p class="card-text">{{ $products->authors }}</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <a href="{{ route('product-show', $products->id) }}"
                                       class="btn btn-sm btn-outline-secondary">View</a>
                                </div>

                            </div>
                            <!--</div>-->
                        </div>
                    </div>

                    <br><br>
                    <div class="row">
                        <div class="col-3">
                            <img src="/storage/category/{{ $category->id }}/{{ $products->photo }}"
                                 alt="{{ $products->photo }}" class="float-left" width="125px" height="164px">
                        </div>
                        <div class="col-8">
                            <h3><b>{{ $products->title }}</b></h3>

                            <br>
                            <h4>{{ $products->subtitle }}</h4><br><br>
                            <h5><b>Authors: &nbsp;&nbsp;</b>{{ $products->authors }}</h5>
                        </div>

                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <a href="{{ route('product-show', $products->id) }}"
                                   class="btn btn-sm btn-outline-secondary">View</a>
                            </div>

                        </div>

                    </div>
                @endforeach
            </div>
        </div>
    @else
        <h3>No photos yet.</h3>
    @endif

@endsection
