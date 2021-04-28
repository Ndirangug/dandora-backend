<?php

namespace Database\Factories;

use App\Models\Payment;
use Illuminate\Database\Eloquent\Factories\Factory;

class PaymentFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Payment::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'date' => now(),
            'for_month' => now(),
            'amount' => $this->faker->randomFloat(2, 1000.0),
            'purpose' => $this->faker->randomElement(['booking', 'rent']),
            'tenancy_id' => random_int(4, 13)
        ];
    }
}
