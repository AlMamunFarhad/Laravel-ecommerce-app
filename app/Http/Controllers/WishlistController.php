<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;

class WishlistController extends Controller
{
    public function getWishlistProducts()
    {
        $items = Cart::instance('wishlist')->content();
        return view('wishlist',['items' => $items]);
    }
    public function addProductToWishlist(Request $request)
    {
        Cart::instance('wishlist')->add($request->id, $request->name, 1, $request->price)->associate('App\Models\Product');
        return response()->json(['status' => true, 'message' => 'Success ! Product added to wishlist.']);
    }

    public function removeWishlistItem(Request $request)
    {
        Cart::instance('wishlist')->remove($request->rowId);
        return redirect()->route('wishlist.products')->with('success', 'Product removed from wishlist.');
    }

    public function clearWishlist()
    {
        Cart::instance('wishlist')->destroy();
        return redirect()->route('wishlist.products')->with('success', 'Wishlist cleared.');
    }

    public function moveToCart(Request $request)
    {
        $item = Cart::instance('wishlist')->get($request->rowId);
        Cart::instance('wishlist')->remove($request->rowId);
        Cart::instance('cart')->add($item->model->id, $item->model->name,1,$item->model->regular_price)->associate('App\Models\Product');
        return redirect()->route('wishlist.products')->with('success', 'Product moved to cart.');
    }
}
