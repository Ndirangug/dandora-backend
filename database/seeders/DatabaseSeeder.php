<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(HouseSeeder::class);
        $this->call(TenantSeeder::class);
        $this->call(TenancySeeder::class);
        $this->call(BookingSeeder::class);
        $this->call(PaymentSeeder::class);
    }
}
