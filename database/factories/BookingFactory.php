<?php

namespace Database\Factories;

use App\Models\Booking;
use Illuminate\Database\Eloquent\Factories\Factory;

class BookingFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Booking::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'date_booked' => now(),
            'expected_occupy_date' => date_add(now(), date_interval_create_from_date_string("40 days")),
            'paid' => $this->faker->randomElement([TRUE, FALSE]),
            'house_id' => random_int(51, 60),
            'tenant_id' => random_int(11, 20),
        ];
    }
}
