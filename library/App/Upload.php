<?php


class App_Upload {

    public function __construct() {

    }

    public function upload() {

      die('oi');
      if(empty($_FILES['file']))
      {
        exit();
      }
        $errorImgFile = "./img/img_upload_error.jpg";
        $temp = explode(".", $_FILES["file"]["name"]);
        $newfilename = round(microtime(true)) . '.' . end($temp);
        $destinationFilePath = "C:\\xampp\\htdocs\\public\\static\\upload\\banner\\".$newfilename ;
      if(!move_uploaded_file($_FILES['file']['tmp_name'], $destinationFilePath)){
        echo $errorImgFile;
      }
      else{
        echo $destinationFilePath;
      }


    }
}
