<?php

namespace App\Http\Controllers;

use App\Models\Tenancy;
use Illuminate\Http\Request;

class TenancyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Tenancy::all();
    }

   
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $tenancy_array = $request->toArray();
        
        $tenancy = Tenancy::create($tenancy_array);
        return $tenancy;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Tenancy  $tenancy
     * @return \Illuminate\Http\Response
     */
    public function show(Tenancy $tenancy)
    {
        return $tenancy;
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Tenancy  $tenancy
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Tenancy $tenancy)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Tenancy  $tenancy
     * @return \Illuminate\Http\Response
     */
    public function destroy(Tenancy $tenancy)
    {
        //
    }
}
