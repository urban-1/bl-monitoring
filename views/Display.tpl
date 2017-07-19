<!DOCTYPE html>
<html lang="en">
<title>Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<head>
<style>
    td, th {
        border: 1px solid #dddddd;
        text-align: center;
        padding-left: 5%;
        padding-right: 5%;
    }
    th {
        background-color: black;
        color: white;
    }
    .navbar-brand
        {
            position: relative;
            background: url(https://i2.wp.com/freepngimages.com/wp-content/uploads/2016/10/sky-logo.png?fit=624%2C455);
            width: 69px;
            height: 50px;
            background-size: contain;
        }
    body {
        padding: 1%;
    }
</style >
</head>
<body>
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
    % include('templates\Header.html')
<br><br>
<table id="table" class="stripe" cellspacing="0"  width="99%">

</table>
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script>
    var myTable;
    $(document).ready(function() {
       myTable = $('#table').DataTable( {
        ajax: "getdata",
        "lengthMenu": [10, 25, 28, 50, "All"],
        "scrollCollapse": true,
        "info":           true,
        "paging":         true,
        "autoWidth":      false,
        "columnDefs": [
           { "width": "25%", "targets": 0, "title": "Devices"},
           { "width": "13%", "targets": 1, "title": "Floor" },
           { "width": "18%", "targets": 2, "title": "Status" },
           {"targets": 3, "title": "Comment"}
        ],
        columns: [
           { data: 'thing' },
           { data: 'floor' },
           { data: 'status' },
           { data: 'comment' },
        ]
        } );
    } );
setInterval( function () {
    myTable.ajax.reload( null, false );
}, 5000 );
</script>
</body>
</html>