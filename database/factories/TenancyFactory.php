<?php

namespace Database\Factories;

use App\Models\Tenancy;
use Illuminate\Database\Eloquent\Factories\Factory;

class TenancyFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Tenancy::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'start_date' => now(),
            'end_date' => date_add(now(), date_interval_create_from_date_string("40 days")),
            'expected_end_date' => date_add(now(), date_interval_create_from_date_string("40 days")),
            'house_id' => random_int(51, 60),
            'tenant_id' => random_int(11, 20),
        ];
    }
}
