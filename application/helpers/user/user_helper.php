<?php

/*
 | Display User Status
*/
 function setStatus($status){
    if($status == 'active'){
        return '<b style="font-weight: bold;color: #00cc33;">'. ucfirst($status) .'</b>';
    }else{
        return '<b style="font-weight: bold;color: #92C7C7;">'. ucfirst($status) .'</b>';
    }
 }
