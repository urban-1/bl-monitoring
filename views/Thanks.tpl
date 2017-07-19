<!DOCTYPE html>
<html lang="en">
<title>Thanks</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<head>
<div id="header">
    % include('templates\Header.html')
</div>
<style>
    .navbar-brand
        {
            position: relative;
            background: url(https://i2.wp.com/freepngimages.com/wp-content/uploads/2016/10/sky-logo.png?fit=624%2C455);
            width: 69px;
            height: 50px;
            background-size: contain;
        }
</style>
</head>
<br><br><br>
<div style="padding-left: 4%">
<h1><b>Thank you for your input,</b></h1>
<h2><b>Your contribution has been submitted.</b></h2>
</div>
<script type="text/javascript">
var count = 5;
function countDown(){
    var timer = document.getElementById("timer");
    if(count > 0) {
        timer.innerHTML = "This page will redirect in "+count+" seconds.";
        count--;
        setTimeout("countDown()", 1000);
    } else{
            window.location.href = "http://localhost:8080";
    }
}
</script>
<h3><span id="timer" style="padding-left: 4%"><script type="text/javascript">countDown();</script></span></h3>
</body>
</html>