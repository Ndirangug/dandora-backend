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
        $date = $this->faker->dateTime('now', 'Africa/Nairobi');
        
        return [
            'date' => $date,
            'for_month' => $this->faker->dateTimeBetween($date, '+90 days'),
            'amount' => $this->faker->randomFloat(2, 1000.0),
            'purpose' => $this->faker->randomElement(['booking', 'rent', 'contribution']),
            'tenancy_id' => random_int(4, 13),
            'booking_id' => random_int(1, 11),
            'tenant_id' => random_int(11, 20),
        ];
    }
}
