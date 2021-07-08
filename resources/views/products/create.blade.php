@extends('layouts.app')

@section('content')
    <div class="container">
        <br>
        <h2>Insert new book</h2>
        <form method="post" action="{{ route('product-store') }}"
              enctype="multipart/form-data">
            @csrf
            <input type="hidden" name="category_id" value="{{ $categoryId }}">

            <div class="col-4">
                <label for="title">Title</label>
                <input type="text" class="form-control"
                       name="title"
                       id="title"
                       placeholder="Enter title">
             </div>
            <div class="col-8">
                <label for="subtitle">Subtitle</label>
                <input type="text"
                       class="form-control"
                       name="subtitle"
                       id="subtitle"
                       placeholder="Enter subtitle">
            </div>
            <div class="col-8">
                <label for="authors">Authors</label>
                <input type="text"
                       class="form-control"
                       name="authors"
                       id="authors"
                       placeholder="Enter authors">
            </div>
            <div class="col-8">
                <label for="publisher">Publisher</label>
                <input type="text"
                       class="form-control"
                       name="publisher"
                       id="publisher"
                       placeholder="Enter publisher">
            </div>
            <div class="col-8">
                <label for="year">Year</label>
                <input type="text"
                       class="form-control"
                       name="year"
                       id="year"
                       placeholder="Enter year">
            </div>
            <div class="col-8">
                <label for="ebookisbn">eBook ISBN</label>
                <input type="text"
                       class="form-control"
                       name="ebookisbn"
                       id="ebookisbn"
                       placeholder="Enter eBook ISBN">
            </div>
            <div class="col-8">
                <label for="doi">DOI</label>
                <input type="text"
                       class="form-control"
                       name="doi"
                       id="doi"
                       placeholder="Enter DOI">
            </div>
            <div class="col-8">
                <label for="softcover_isbn">Softcover ISBN</label>
                <input type="text"
                       class="form-control"
                       name="softcover_isbn"
                       id="softcover_isbn"
                       placeholder="Enter Softcover ISBN">
            </div>
            <div class="col-8">
                <label for="ed_number">Edition Number</label>
                <input type="text"
                       class="form-control"
                       name="ed_number"
                       id="ed_number"
                       placeholder="Enter Edition Number">
            </div>
            <div class="col-8">
                <label for="n_pages">Number of Pages</label>
                <input type="text"
                       class="form-control"
                       name="n_pages"
                       id="n_pages"
                       placeholder="Enter Number of Pages">
            </div>
            <div class="col-8">
                <label for="n_illustrations">Number of Illustrations</label>
                <input type="text"
                       class="form-control"
                       name="n_illustrations"
                       id="n_illustrations"
                       placeholder="Enter Number of Illustrations">
            </div>
            <div class="form-group">
                <div class="col-8">
                    <label for="description">Description</label>
                    <textarea type="text" class="form-control"
                              name="description"
                              id="description" rows="7"
                              placeholder="Enter description">
                    </textarea>
                </div>

            </div>
            <div class="form-group">
                <label for="photo">Photo</label>
                <input type="file" class="form-control"
                       name="photo" id="photo">
            </div>
            <button type="submit" class="btn btn-primary">Insert New Book</button>
        </form>
    </div>
@endsection
