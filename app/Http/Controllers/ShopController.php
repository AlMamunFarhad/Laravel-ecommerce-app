<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Request;
use Cart;

class ShopController extends Controller
{
    // Filter products by brand, category, price range and order
    public function index(Request $request)
    {
        $page = $request->query('page');
        $size = $request->query('size');
        if (!$page)
            $page = 1;
        if (!$size)
            $size = 12;
        $order = $request->query('order');
        if (!$order)
            $order = -1;
        $column = "";
        $orderList = "";
        switch ($order) {
            case 1:
                $column = 'created_at';
                $orderList = 'DESC';
                break;
            case 2:
                $column = 'created_at';
                $orderList = 'ASC';
                break;
            case 3:
                $column = 'regular_price';
                $orderList = 'ASC';
                break;
            case 4:
                $column = 'regular_price';
                $orderList = 'DESC';
                break;
            default:
                $column = 'id';
                $orderList = 'DESC';
        }
        $brands = Brand::orderBy('name')->get();
        $brand_checkbox = $request->query('brands');
        $categories = Category::orderBy('name','ASC')->get();
        $q_categories = $request->query('categories');
        $prange = $request->query('prange');
        if(!$prange)
            $prange = "0,500";
        $from = explode(',', $prange)[0];
        $to = explode(',', $prange)[1];
        $products = Product::where(function($query) use ($brand_checkbox) {
            if ($brand_checkbox) {
                $query->whereIn('brand_id', explode(',', $brand_checkbox))->orWhereRaw("'".$brand_checkbox."' = ''");
            }
        })->
        where(function($query) use ($q_categories) {
            if ($q_categories) {
                $query->whereIn('category_id', explode(',', $q_categories))->orWhereRaw("'".$q_categories."' = ''");
            }
        })
        ->whereBetween('regular_price', array($from, $to))
        ->orderByDesc('created_at')->orderBy($column, $orderList)->paginate($size);

        return view('shop', ['products' => $products, 'page' => $page, 'size' => $size, 'order' => $order, 'brands' => $brands, 'brand_checkbox' => $brand_checkbox,'categories' => $categories, 'q_categories' => $q_categories, 'from' => $from, 'to' => $to,'prange' => $prange]);
    }
    // Show product details
    public function productsDetails($slug)
    {
        $product = Product::where('slug', $slug)->first();
        $slide_products = Product::where('slug', '!=', $slug)->inRandomOrder('id')->take(8)->get();
        return view('product-details', ['product' => $product, 'slide_products' => $slide_products]);
    }
    // Count cart and wishlist items
    public function getCartAndWishlistCount()
    {
        $cart_item_count = Cart::instance('cart')->content()->count();
        $wishlist_count = Cart::instance('wishlist')->content()->count();
        return response()->json(['status'=>200,'cart_item_count' => $cart_item_count, 'wishlist_count' => $wishlist_count]);
    }
}
