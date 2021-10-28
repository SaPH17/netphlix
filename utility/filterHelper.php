<?php

if(!function_exists('filterMovie')){
    function filterMovie($data){
        // print_r($data['isMature']);
        // if($data['isMature'] == 0){
        //     print_r("yes\n");
        //     return true;
        // }
        // print_r("no\n");

        // return false;
        for($i = 0; $i < count($data); $i++){
            if($data[$i]['isMature'] == 1){
                print_r($i);
                unset($data[$i]);
            }
        }

        return $data;
    }
}

?>