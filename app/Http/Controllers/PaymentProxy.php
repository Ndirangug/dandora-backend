<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Http;

class PaymentProxy extends Controller
{
    public function ipay(Request $request)
    {
        $ipayParams = $request->toArray();
        $ipayUrl = 'https://payments.ipayafrica.com/v3/ke';

        $response = Http::post($ipayUrl, $ipayParams);
        return $response;
    }

}
