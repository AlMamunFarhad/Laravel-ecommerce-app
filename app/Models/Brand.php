<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Brand extends Model
{
    use HasFactory;

    protected $table = 'brands';

    protected $fillable = ['name','slug','image'];
    // public function setContainer($value)
    // {
    //     $this->container = $value;
    // }
    public function products()
    {
        return $this->hasMany(Product::class, 'brand_id','id');
    }
}
