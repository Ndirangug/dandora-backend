<?php

namespace App\Http\Controllers;

use App\Models\Tenant;
use Illuminate\Http\Request;
use  Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;

class TenantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Tenant::all();
    }

   

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $tenant_array = $request->toArray();
        $tenant_array['password'] = Hash::make($request->input('password'));
       
        $tenant = Tenant::create($tenant_array);
        return $tenant;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Tenant  $tenant
     * @return \Illuminate\Http\Response
     */
    public function show(Tenant $tenant)
    {
        return $tenant;
    }

    

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Tenant  $tenant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Tenant $tenant)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Tenant  $tenant
     * @return \Illuminate\Http\Response
     */
    public function destroy(Tenant $tenant)
    {
        //
    }

    /**
    * Function to log in user
    *
    * @param  \Illuminate\Http\Request  $request
    * @return \Illuminate\Http\Response
    */
    public function login(Request $request){
        $tenant_array = $request->toArray();

        try {
            $tenant = Tenant::where('email', $tenant_array['email'])->first();
        
            if (Hash::check($tenant_array['password'], $tenant->password)) {
                return $tenant;
            } else {
                return response()->json('Log in failed', 401, );
            }
        } catch (\Throwable $th) {
            return response()->json('User probably doesn\'t exist. Check your email', 401, );
        }
        
        
        
 

    }
}
