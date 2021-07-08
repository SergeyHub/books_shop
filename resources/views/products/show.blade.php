@extends('layouts.app')

@section('content')
    <div class="container">
        <br><br>
        <div class="row">
            <div class="col-3">
                <img src="{{url('/')}}/storage/category/{{$products->category_id}}/{{$products->photo}}"			
                alt="{{url('/')}}/storage/category/{{$products->id}}/{{$products->photo}}" class="float-left" width="200px" height="284">
            </div>
            <div class="col-8">
                <h3><b>{{ $products->title }}</b></h3>

                <br>
                <h4>{{ $products->subtitle }}</h4><br><br>
                <h5><b>Authors: &nbsp;&nbsp;</b>{{ $products->authors }}</h5>
            </div>

        </div>
        <div>
            <br>
            <h4><b>About this book</b></h4>
            <br>
            <p>{{ $products->description }}</p>
        </div>
        <div>
            <br>
            <h4><b>Bibliographic Information</b></h4>
            <br>
            <div class="row">
                <div class="col-4">
                    <p><b>Book Title &nbsp;</b>{{ $products->title }}</p><hr>
                    <p><b>Book Subtitle&nbsp; </b>{{ $products->subtitle }}</p><hr>
                    <p><b>Authors: &nbsp;&nbsp;</b>{{ $products->authors }}</p><hr>
                    <p><b>Copyright &nbsp;</b>{{ $products->year }}</p>
                </div>
                <div class="col-4">
                    <p><b>Publisher &nbsp;</b>{{ $products->publisher }}</p><hr>
                    <p><b>eBook ISBN&nbsp; </b>{{ $products->ebookisbn }}</p><hr>
                    <p><b>DOI &nbsp;&nbsp;</b>{{ $products->doi }}</p><hr>
                    <p><b>Softcover ISBN &nbsp;</b>{{ $products->softcover_isbn }}</p>
                </div>
                <div class="col-4">
                    <p><b>Edition Number &nbsp;</b>{{ $products->ed_number }}</p><hr>
                    <p><b>Number of Pages&nbsp; </b>{{ $products->n_pages }}</p><hr>
                    <p><b>Number of Illustrations &nbsp;&nbsp;</b>{{ $products->n_illustrations }}</p>

                </div>
            </div>

        </div>
        <form action="{{ route('product-destroy', $products->id) }}" method="post">
            @csrf
            @method('DELETE')
            <button type="submit" name="button" class="btn btn-danger float-right">DELETE</button>
        </form>
        <a href="{{ route('category-show', $products->category->id) }}" class="btn btn-info">Go Back</a>
        <br>

    </div>
@endsection