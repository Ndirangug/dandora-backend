<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class House extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'title',
        'description',
        'bedrooms',
        'house_number',
        'booked',
        'rent',
        'phase',
        'photo1',
        'photo2',
        'photo3',
    ];

    /**
     * Get all of the bookings for the House
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function bookings(): HasMany
    {
        return $this->hasMany(Booking::class);
    }

    /**
     * Get all of the tenancies for the House
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function tenancies(): HasMany
    {
        return $this->hasMany(Tenancy::class, 'foreign_key', 'local_key');
    }

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'bedrooms' => 'integer',
        'rent' => 'double',
        'booked' => 'boolean',
        
    ];
}
