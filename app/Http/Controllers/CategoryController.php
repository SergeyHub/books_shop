<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    public function index(){
        // folder categories index.blade
        //$categories = Category::with('products')->get();
        //return view('categories.index')->with('categories', $categories);

        $categories = Category::get();
        return view('categories.index')->with('categories', $categories);

    }

    public function create(){
        return view('categories.create');
    }

    public function store(Request $request){
        $this->validate($request, [
            'name' => 'required',
            'description' => 'required',
         ]);

        $category = new Category();
        $category->name = $request->input('name');
        $category->description = $request->input('description');
        $category->save();

        return redirect('/categories')->with('success', 'category created successfully!');
    }

    public function show($id) {

        $category = Category::with('products')->find($id);
        return view('categories.show')->with('category', $category);
    }

}
