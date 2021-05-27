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
       
        //Data needed by iPay a fair share of it obtained from the user from a form e.g email, number etc...
    $fields = array("live"=> "0",
    "oid"=> "112",
    "inv"=> "112020102292999",
    "ttl"=> $ipayParams['ttl'],
    "tel"=> $ipayParams['tel'],
    "eml"=> $ipayParams['eml'],
    "vid"=> "demo",
    "curr"=> "KES",
    "p1"=> "airtel",
    "p2"=> "020102292999",
    "p3"=> "",
    "p4"=> "900",
    "cbk"=> "http://localhost:8000/api/payments/receipt",
    "cst"=> "1",
    "crl"=> "2"
    );
/*
----------------------------------------------------------------------------------------------------
************(b.) GENERATING THE HASH PARAMETER FROM THE DATASTRING *********************************
----------------------------------------------------------------------------------------------------

The datastring IS concatenated from the data above
*/
$datastring =  $fields['live'].$fields['oid'].$fields['inv'].$fields['ttl'].$fields['tel'].$fields['eml'].$fields['vid'].$fields['curr'].$fields['p1'].$fields['p2'].$fields['p3'].$fields['p4'].$fields['cbk'].$fields['cst'].$fields['crl'];
$hashkey ="demoCHANGED";//use "demoCHANGED" for testing where vid is set to "demo"

/********************************************************************************************************
* Generating the HashString sample
*/
$generated_hash = hash_hmac('sha1',$datastring , $hashkey);
        $form = '<head><style>.loader {
            animation:spin 1s infinite linear;
            border:solid 2vmin transparent;
            border-radius:50%;
            border-right-color:#09f;
            border-top-color:#09f;
            box-sizing:border-box;
            height:20vmin;
            left:calc(50% - 10vmin);
            position:fixed;
            top:calc(50% - 10vmin);
            width:20vmin;
            z-index:1;
            &:before {
              animation:spin 2s infinite linear;
              border:solid 2vmin transparent;
              border-radius:50%;
              border-right-color:#3cf;
              border-top-color:#3cf;
              box-sizing:border-box;
              content:"";
              height:16vmin;
              left:0;
              position:absolute;
              top:0;
              width:16vmin;
            }
            &:after {
              animation:spin 3s infinite linear;
              border:solid 2vmin transparent;
              border-radius:50%;
              border-right-color:#6ff;
              border-top-color:#6ff;
              box-sizing:border-box;
              content:"";
              height:12vmin;
              left:2vmin;
              position:absolute;
              top:2vmin;
              width:12vmin;
            }
          }
          
          @keyframes spin {
            100% {
              transform:rotate(360deg);
            }
          }</style></head>';
        $form .= '<div class="loader"/>';
        $form .= '<FORM name="ipay" style="display:none;" action="https://payments.ipayafrica.com/v3/ke">';
        
            foreach ($fields as $key => $value) {
               $form .= $key;
               $form .= ' :<input name="'.$key.'" type="text" value="'.$value.'"></br>';
            }
            $form .= '<INPUT name="hsh" type="text" value="'.$generated_hash.'">';
            $form .= '<button type="submit">  Lipa  </button> </FORM>';

            $form .= "<script>window.onload = function(){document.forms['ipay'].submit();}</script>";
        return $form;
    }


}