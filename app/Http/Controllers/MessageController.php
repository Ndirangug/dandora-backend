<?php

namespace App\Http\Controllers;

use Mail;
use App\Models\Message;
use App\Models\Tenant;
use Illuminate\Http\Request;

class MessageController extends Controller
{

    public function broadcastMessage($text){
        $tenants = Tenant::all('email');

        Mail::raw($text, function ($message) {
            $message->from('admin@dandora.com', 'Dandora Admin');
            $message->subject('NEW MESSAGE FROM DANDORA WELFARE');
            $message->to('ndirangu.mepawa@outlook.com')->cc($tenants);
        });
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       return Message::all();

    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $message_array = $request->toArray();
        

        Mail::raw($message_array['text'], function ($message) {
            $tenants= Tenant::all('email');
            $emails = [];
            foreach ($tenants as $tenant) {
                array_push($emails,$tenant['email']);
            }

            $message->from('admin@dandora.com', 'Dandora Admin');
            $message->subject('NEW MESSAGE FROM DANDORA WELFARE');
            $message->to('ndirangu.mepawa@outlook.com')->cc($emails);
        });

        $message = Message::create($message_array);


        return $message;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Message  $message
     * @return \Illuminate\Http\Response
     */
    public function show(Message $message)
    {
        return $message;
    }

    

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Message  $message
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Message $message)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Message  $message
     * @return \Illuminate\Http\Response
     */
    public function destroy(Message $message)
    {
        //
    }

   
}
