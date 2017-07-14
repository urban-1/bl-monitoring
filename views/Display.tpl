<!DOCTYPE html>
<html lang="en">
<title>Home</title>
<head>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"/>
<style>
td, th
{
    border: 1px solid #dddddd;
    text-align: center;
    padding: 8px;
}
th
{
    background-color: black;
    color: white;
}

</style >
</head>
<body>
<img src="https://dm8eklel4s62k.cloudfront.net/images/sky-logo-b90e8c9.jpg" alt="SkyLogo" style="width:150px;height:100px;float:left;">
<table id="table" class="stripe" cellspacing="0"  width="99%">
    {{!table}}
</table>
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script>

    $(document).ready(function() {
       $('#table').DataTable( {
        "lengthMenu": [10, 25, 50, "All"],
        "scrollCollapse": true,
        "info":           true,
        "paging":         true
        } );
    } );
</script>
</html>