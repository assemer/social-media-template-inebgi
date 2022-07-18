<?php


if (!session_start()) 
{session_start();}

require 'app/libs/php/class/conf.php';
require 'app/libs/php/class/users.php';

//getRandomPosts

$account = isset($_SESSION["username"]) ? $MGuser->searchUserByUsername(htmlspecialchars($_SESSION['username'])) : false;


?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>inebgi</title>

    <link rel="stylesheet" type="text/css" href="/app/libs/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/app/libs/css/fontawesome.min.css">
    <link rel="stylesheet" type="text/css" href="/app/libs/css/semantic.min.css">
    
    <link rel="stylesheet" type="text/css" href="/app/libs/css/style.light.css">


</head>
<body>

<?php include 'app/libs/html/nav_bar.php';?>

<div class="ui">
  <div class="ui d-flex justify-content-center">
  
    <div class="col-lg-8">

      <?php 

      if($_SESSION["username"] == $account["username"] && isset($_SESSION['login']))
      {
        echo '
      
        ';
      }
      ?>

  
  <div id="postsPanels">
    

  </div>
  </div>


  </div>

</div>


</body>
</html>
<script type="text/javascript" src="/app/libs/js/jquery.min.js"></script>
<script type="text/javascript" src="/app/libs/js/semantic.min.js"></script>
<script type="text/javascript" src="/app/libs/js/app.js"></script>

<script type="text/javascript">

panel = $("#postsPanels");
  
getRandomPosts(panel);
getRandomPosts(panel);
getRandomPosts(panel);
var doc = $(document), w = $(window), timer;

doc.on('scroll', function(){

    if(doc.scrollTop() + w.height() >= doc.height()-100){

        if(typeof timer !== 'undefined') clearTimeout(timer);

        timer = setTimeout(function(){
            getRandomPosts(panel);
            getRandomPosts(panel);
            getRandomPosts(panel);
            getRandomPosts(panel);
            console.log('end of page');
        }, 10);

    }

});

</script>