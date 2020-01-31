<?php
    include 'server.php';  //memanggil file db.php
    
    //mengecek variabel
    if(isset($_POST["title"]) && isset ($_POST["desc"]) && isset ($_POST["time"]))
    {
        
        $title= $_POST['title'];
        $desc= $_POST['desc'];
        $time= $_POST['time'];
        
        $query = "INSERT INTO immunization_schedule (schedule_title , schedule_desc , schedule_time) VALUES ('$title','$desc','$time')";
        $hasil  = mysqli_query($conn,$query);
        if($hasil)
        {
            $response['result']= true;
            $response["msg"]= "Berhasil Menambah Jadwal Imunisasi";
            echo json_encode($response);
        }
        else {
            $response['result']= false ;
            $response['msg']="maaf,terjadi kesalahan";
            echo json_encode($response);
        }
        }else{
            $response['result']= false ;
            
            $response['msg']="maaf, data salah";
            echo json_encode($response);
        }
    
    ?>
