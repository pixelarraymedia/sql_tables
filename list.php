<?php


        /// Here we are sorting a list of arrays in alphabetical order
        
        $list =  array("my","name","is","john","doe");
        sort($list);

        foreach ($list as $key => $val){

                echo " [" .$key. "] = " . $val . "\n";
                
        }
        

?>
