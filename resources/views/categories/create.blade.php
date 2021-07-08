@extends('layouts.app')

@section('content')

    <div class="container">
        <h2>Create new category</h2>
        <form method="post" action="{{route('category-store')}}"
              enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" name="name"
                       id="name" placeholder="Enter name">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <input type="text" class="form-control" name="description"
                       id="description" placeholder="Enter description">
            </div>

            <button type="submit" class="btn btn-primary">Insert new category</button>
        </form>
    </div>


@endsection