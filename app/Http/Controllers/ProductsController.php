<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
class ProductsController extends Controller
{
    public function create(int $categoryID)
    {
        return view('products.create')->with('categoryId', $categoryID);
    }

    public function store(Request $request)
    {

        $this->validate($request, [
            'title' => 'required',
            'description' => 'required',
            'photo' => 'required|image'
        ]);

        $filenameWithExtension = $request->file('photo')->getClientOriginalName();
        $filename = pathinfo($filenameWithExtension, PATHINFO_FILENAME);
        $extension = $request->file('photo')->getClientOriginalExtension();
        $filenameToStore = $filename . '_' . time() . '.' . $extension;
        $request->file('photo')->storeAs('/books_shop/public/storage/category/' .
        $request->input('category_id'), $filenameToStore);

        $products = new Product();
        $products->category_id = $request->input('category_id');
        //$product->type = $request->input('type');
        $products->type = $request->input('type'==0);
        $products->title = $request->input('title');
        $products->subtitle = $request->input('subtitle');
        $products->authors = $request->input('authors');
        $products->publisher = $request->input('publisher');
        $products->year = $request->input('year');
        $products->ebookisbn = $request->input('ebookisbn');
        $products->doi = $request->input('doi');
        $products->softcover_isbn = $request->input('sofcover_isbn');
        $products->ed_number = $request->input('ed_number');
        $products->n_pages = $request->input('n_pages');
        $products->n_illustrations = $request->input('n_illustrations');
        $products->description = $request->input('description');
        $products->photo = $filenameToStore;
        //$product->size = $request->file('photo')->getSize();
        //$product->category_id = $request->input('category_id');
        $products->save();

        return redirect('/categories/' . $request->input('category_id'))->
        with('success', 'Book uploaded successfully!');
    }

    public function show($id)
    {
        $products = Product::find($id);
        return view('products.show')->with('products', $products);

    }
}
