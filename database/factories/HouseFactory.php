<?php

namespace Database\Factories;

use App\Models\House;
use Illuminate\Database\Eloquent\Factories\Factory;

class HouseFactory extends Factory
{
    private $letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
    private $number = 0;
    private $letter = 0;

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
        $bedrooms = random_int(1, 4);
        if ($this->number > 9) {
            $this->number = 0;
            $this->letter++;
            
        }
        $house_number = $this->letters[$this->letter].$this->number;
        $this->number++;

        return [
           'title' => $this->faker->randomElement(['Cosy', 'Elegant', 'Spcious']). " ". $bedrooms. " bedroom house",
           'description' => $this->faker->sentence(),
           'house_number' => $house_number,
           'booked' => $this->faker->randomElement([true, false]),
           'bedrooms' => $bedrooms,
           'rent' => $this->faker->randomFloat(10, 1000),
           'phase' => $this->faker->randomElement(['I', 'II', 'III']),

        ];
    }
}
