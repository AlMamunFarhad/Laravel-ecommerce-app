<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ShopController extends Controller
{
    public function index(Request $request)
    {
        $page = $request->query('page');
        $size = $request->query('size');
        if(!$page){
            $page = 1;
        }     
        if(!$size){
            $size = 12; 
        }
        $products = Product::orderByDesc('created_at')->paginate($size);
        return view('shop',['products' => $products, 'page'=> $page, 'size'=>$size]);
    }

    public function productsDetails($slug)
    {
        $product = Product::where('slug',$slug)->first();
        $slide_products = Product::where('slug', '!=', $slug)->inRandomOrder('id')->take(8)->get();
        return view('product-details',['product'=> $product, 'slide_products' => $slide_products]);
    }
}
