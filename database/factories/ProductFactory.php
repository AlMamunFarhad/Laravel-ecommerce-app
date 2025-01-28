<?php

namespace Database\Factories;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $product_name = $this->faker->unique()->words($nb = 2, $asText = true);
        $slug = Str::slug($product_name);
        $image_name = $this->faker->numberBetween(1,24).'.jpg';   
        return [
            'name' => Str::title($product_name),
            'slug' => $slug,
            'short_description' => $this->faker->text(200),
            'description' => $this->faker->text(500),
            'sale_price' => $this->faker->numberBetween(20,40),
            'regular_price' => $this->faker->numberBetween(50,100),
            'SKU' => 'SMD'. $this->faker->numberBetween(100,500),
            'stock_status' => 'instock',
            'quantity' => $this->faker->numberBetween(100,200),
            'image' => $image_name,
            'images' => $image_name,
            'category_id' => $this->faker->numberBetween(1,6),
            'brand_id' => $this->faker->numberBetween(1,6),
        ];

        //  return [
        //     'name' => 'Farhad',
        //     'slug' => 'Farhad',
        //     'short_description' => 'Farhad',
        //     'description' => 'description',
        //     'regular_price' => 100,
        //     'SKU' => 'SMD'. 'hello',
        //     'stock_status' => 'instock',
        //     'quantity' => 100,
        //     'image' => 'image',
        //     'images' => 'images',
        //     'category_id' => 1,
        //     'brand_id' => 1,
        //  ];
    }
}
