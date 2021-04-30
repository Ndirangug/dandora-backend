<?php

namespace Database\Factories;

use App\Models\House;
use Illuminate\Database\Eloquent\Factories\Factory;

class HouseFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = House::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
           'title' => $this->faker->randomElement(['Cosy', 'Elegant', 'Spcious']). " ". random_int(1, 4). " bedroom house",
           'description' => $this->faker->sentence(),
           'bedrooms' => random_int(1, 4),
           'rent' => $this->faker->randomFloat(10, 1000),
           'phase' => $this->faker->randomElement(['I', 'II', 'III']),

        ];
    }
}
