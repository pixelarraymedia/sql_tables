<?php
include("header.php");
?>


<div class="container">
    <div class="content">
        <div class="main">

            <table> <?php
                    $dblink = mysqli_connect("localhost", "root", "");
                    if ($dblink == false) {

                        echo '<div class="article">Couldn\'t connect to database server</div>';

                    } else // if there is a database connection

                     {

                        mysqli_select_db($dblink, "messages");


                        ////// ***** RETRIEVE Last message from all users *******///////
                        $sql = "SELECT * FROM `m_list` ORDER BY dt DESC ";

                        $result = mysqli_query($dblink, $sql);

                        if ($result == false) {
                                    // if query fails connection shoq SQL error
                            echo '<div class="article">Query Error : ' . $sql . ' </div> ';

                        } else
                       
                             {


                            echo '    <table class="table">

                                                <th scope="col"> Most recent  </th> 

                                                <th> Message </th> 
                    
                                        </thead> ' ;

                            while ($row = mysqli_fetch_array($result))
                                        //loop through messages
                                foreach ($result as $row) {
                                   ?>   
                                        <tr>
                                            <td> <?php echo $row['uid'] ?> </td>
                                     
                                            <td> <?php echo $row['dt'] ?> </td>

                                            <td> <?php echo $row['s'] ?> </td>
                                        </tr>
                                <?php
                                        }
                                ?>
                                       </tr> 
                        
                          <?php

                            }
                           ?>

                                     </table> 
            
            
            <?php
                    }


                        ?>

        </div>
    </div>
</div>





<?php
include("footer.php");
?>