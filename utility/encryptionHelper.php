<?php

if(!function_exists('encrypt')){
    function encrypt($string){
        $output = false;

        $encrypt_method = "AES-256-CBC";
        $secret_key = 'skolastikagabriella';
        $secret_iv = 'theresandiaprasetyo';

        $key = hash('sha256', $secret_key);
        $iv = substr(hash('sha256', $secret_iv), 0, 16);

        $output = openssl_encrypt($string, $encrypt_method, $key, 0, $iv);
        $output = base64_encode($output);

        return $output;

    }
}

if(!function_exists('decrypt')){
    function decrypt($string){
        $output = false;

        $encrypt_method = "AES-256-CBC";
        $secret_key = 'skolastikagabriella';
        $secret_iv = 'theresandiaprasetyo';

        $key = hash('sha256', $secret_key);
        $iv = substr(hash('sha256', $secret_iv), 0, 16);

        $output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);

        return $output;
    }
}

?>