<!DOCTYPE html>
<html lang="en">
<title>About</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<style>
    .jumbotron {
        padding-top: 3.5%;
        height: 250px;
    }
</style>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="C:\Users\v-red01\PycharmProjects\bootstrap-3.3.7/favicon.ico">
    <link href="C:\Users\v-red01\PycharmProjects\bootstrap-3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="C:\Users\v-red01\PycharmProjects\bootstrap-3.3.7/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
<style>
    .navbar-brand {
            position: relative;
            background: url(https://i2.wp.com/freepngimages.com/wp-content/uploads/2016/10/sky-logo.png?fit=624%2C455);
            width: 69px;
            height: 50px;
            background-size: contain;
        /*}*/
</style >
</head>
<body>
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    % include('templates\Header.html')
    <div class="jumbotron" style="padding-left: 8%;">
      <h1><b>About</b></h1>
      <p style="font-size:25px;">This is a dashboard service to show the status of equipment and devices, whether they are working or not and when they were fixed</p>
    </div>
    <div style="padding-left: 4%;">
    <h1 style="font-size:44px;"><b>How to use:</b></h1>
    <h2><b>Reporting status-</b></h2>
    <p style="font-size:20px;">To report the status of an equipment or device head over to the input page, use the drop down menus to select what you wish to report and then press the 'submit' button</p>
    <br>
    <h2><b>Monitoring status-</b></h2>
    <p style="font-size:20px;">Navigate to the Home page and use the table to monitor status, it should refresh automatically</p>
    </div>
</body>
</html>