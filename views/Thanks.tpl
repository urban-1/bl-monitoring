<!DOCTYPE html>
<html lang="en">
<title>Thanks</title>
<head>
    <div id="header">
    % include('templates\Header.html')
</div>
</head>
<body>
Thanks for your input,
Your contribution has been submitted.
<br>
<script type="text/javascript">
var count = 5;
function countDown(){
    var timer = document.getElementById("timer");
    if(count > 0) {
        timer.innerHTML = "This page will redirect in "+count+" seconds.";
        count--;
        setTimeout("countDown()", 1000);
    } else{
            //window.location.href = "http://localhost:8080";
    }
}
</script>
<span id="timer"><script type="text/javascript">countDown();</script></span>
</body>
</html>