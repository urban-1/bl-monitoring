<!DOCTYPE html>
<html lang="en">
<title>Home</title>
<head>
<div id="header">
    % include('templates\Header.html')
</div>
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
        "paging":         true,
        "autoWidth":      false,
         "columnDefs": [
            { "width": "25%", "targets": 0 },
            { "width": "13%", "targets": 1 },
            { "width": "18%", "targets": 2 }
        ]
        } );
    } );
</script>
</html>