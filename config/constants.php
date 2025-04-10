<?php 
    //Bắt đầu tiến trình
    session_start();

    //Tạo hằng số để lưu trữ các giá trị không lặp lại
    define('SITEURL', 'http://localhost:8080/WebSite_FastFood/'); //Dùng port :8080
    define('LOCALHOST', 'localhost');
    define('DB_USERNAME', 'root');
    define('DB_PASSWORD', '');
    define('DB_NAME', 'food-order');
    
    $conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD) or die(mysqli_error());
     //Kết nối cơ sở dữ liệu
    $db_select = mysqli_select_db($conn, DB_NAME) or die(mysqli_error()); //Lựa chọn cơ sở dữ liệu
?>