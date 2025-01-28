<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ShopController extends Controller
{
    public function index()
    {
        $products = Product::orderByDesc('created_at')->paginate(12);
        return view('shop',['products' => $products]);
    }

    public function productsDetails($slug)
    {
        $product = Product::where('slug',$slug)->first();
        $slide_products = Product::where('slug', '!=', $slug)->inRandomOrder('id')->take(8)->get();
        return view('product-details',['product'=> $product, 'slide_products' => $slide_products]);
    }
}
