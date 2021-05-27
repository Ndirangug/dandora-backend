<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Booking;
use App\Models\House;
use App\Models\Payment;

class ReportsController extends Controller
{
    public function bookings(Request $request)
    {
        $start_date = $request->input('start_date');
        $end_date = $request->input('end_date');
        
        $bookings = Booking::where('bookings.created_at', '>=', $start_date)->where('bookings.created_at', '<=', $end_date)->join('houses', 'houses.id', '=', 'bookings.house_id')->join('tenants', 'tenants.id', '=', 'bookings.tenant_id')->select('houses.house_number', 'bookings.expected_occupy_date', 'bookings.paid', 'bookings.date_booked', 'tenants.first_name', 'tenants.last_name', 'tenants.phone')->get();
        return $bookings;

    }

    public function booked(){
        // currently booked
        $houses = House::where('booked', true)->join('bookings', 'houses.id', '=', 'bookings.house_id')->join('tenants', 'tenants.id', '=', 'bookings.tenant_id')->select('houses.house_number', 'bookings.expected_occupy_date', 'bookings.paid', 'bookings.date_booked', 'tenants.first_name', 'tenants.last_name', 'tenants.phone')->get();
        return $houses;
    }

    public function payments(Request $request)
    {
        $start_date = $request->input('start_date');
        $end_date = $request->input('end_date');
        $purpose = $request->input('purpose');

        $payments = [];
        if ($request->has('purpose')){
            $payments = Payment::where('payments.created_at', '>=', $start_date)->where('payments.created_at', '<=', $end_date)->where('payments.purpose',  $purpose)->join('tenants', 'tenants.id', '=', 'payments.tenant_id')->select('payments.id', 'payments.created_at', 'payments.for_month', 'payments.amount', 'payments.purpose','tenants.first_name', 'tenants.last_name', 'tenants.phone')->get();

        } else {
            $payments = Payment::where('payments.created_at', '>=', $start_date)->where('payments.created_at', '<=', $end_date)->join('tenants', 'tenants.id', '=', 'payments.tenant_id')->select('payments.id', 'payments.created_at', 'payments.for_month', 'payments.amount', 'payments.purpose','tenants.first_name', 'tenants.last_name', 'tenants.phone')->get();

        }
        
        return $payments;

    }

    public function overdueRent(Request $request){
        // tenants list
        return [];
    }
   
}
