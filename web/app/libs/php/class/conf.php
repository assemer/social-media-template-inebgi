<?php
/**
 * conf
 */
class conf
{
    
    public static $name     = "inebgi";
    public static $nameCorp = "inebgi";
    public static $authors  = "leptis";


    public static $BlockDB = false;


    public static function DB()
    {
        $con = mysqli_connect("127.0.0.1","admin","admin","inebgiDB");
        if (!$con) 
        {die("Conection To dataBase Fails !");}
        
        return $con;

    }
    public function login($usr)
    {
        if (!session_start()) {
            session_start();
        }
        $_SESSION['login'] = true;
        $_SESSION['username'] = $usr;
        $_SESSION['account'] = $usr;


    }
}
?>
