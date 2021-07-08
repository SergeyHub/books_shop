@extends('layouts.app')

@section('content')
    <section class="jumbotron text-center">
        <div class="container">
            <h1 class="jumbotron-heading">{{ $category->name }}</h1>
            <p class="lead text-muted">{{ $category->description }}</p>
            <p>
                <a href="{{ route('product-create', $category->id) }}"
                   class="btn btn-primary my-2">Insert new book</a>
                <a href="{{url('/')}}" class="btn btn-secondary my-2">Go Back</a>
            </p>
        </div>
    </section>

    @if (count($category->products) > 0)
        <div class="container">
            <div class="row">
                @foreach ($category->products as $products)
                    <div class="col-md-4">
                        <div class="card mb-4 shadow-sm">
                            <div class="col-3">
                            
                            <img src="{{url('/')}}/storage/category/{{ $category->id }}/{{ $products->photo }}"
                                 alt="{{ $products->photo }}" class="float-left" height="164px" width="125">                           
                            

                            </div>
                            <div class="col-8">
                                <p class="card-text">{{ $products->title }}</p>

                                <p class="card-text"><b>Authors:&nbsp;&nbsp;</b>{{ $products->authors }}</p>
                                <div class="card-body">

                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">
                                            <a href="{{ route('product-show', $products->id) }}"
                                               class="btn btn-sm btn-outline-secondary">View</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <br><br>

                @endforeach
            </div>
        </div>
    @else
        <h3>No photos yet.</h3>
    @endif

@endsection
