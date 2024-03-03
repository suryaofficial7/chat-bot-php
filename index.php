<?php
date_default_timezone_set('Asia/Kolkata');
include('database.inc.php');



?>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="robots" content="noindex, nofollow">
      <title>PHP Chatbot</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	  <link href="style.css" rel="stylesheet">
      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
   </head>
   <body>
    <br>
    <center>
<h2>Welcome to The HItesh Chat Bot 2024</h2>
</center>
<br><hr>

<form action="index2.php"  method="post">
<input type="hidden" name="userID" value="<?php echo rand() ?>">
<button type="submit">Get Started</button>
</form>
      <script type="text/javascript">
	
      </script>
   </body>
</html>