<!DOCTYPE html>
<html lang="en">
<head>
<title>Data Collection</title>
    <style type="text/css">
        p {
            position: absolute;
            right: 0px;
            top: -14px;
        }
        #MainDiv {
            display: inline-block;
            position: relative;
        }
        body {
            padding-left: 5px;
            padding-top: 3px;
        }
        textarea {
            height: 45px;
            padding: 10px;
            width: 440px;
            max-width: 500px;
            height: 100px;
        }
        textarea, input[type="text"], fieldset.elist ul,
        select, fieldset.elist > legend {
            border-radius: 20px;
        }
        fieldset {
            border: 3px black solid;
            border-radius: 10px;
            width: 350px;
        }
    </style>
</head>
<body>
<form method="post" action="/input">
<img src="https://dm8eklel4s62k.cloudfront.net/images/sky-logo-b90e8c9.jpg" alt="SkyLogo" style="width:150px;height:100px;float:left;padding-right:20px;">
<br>
<fieldset>
  <legend>Status update:</legend>
<span id='b'></span>
<span id='a'></span>
<input type="submit" value="Submit" style="float: right;">
</fieldset>
<span id='c'></span>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>
var inventory = {{!inventory}};
console.log(inventory);
function FirstVals() {
   var FormBody =  '<select id="Area">';
    for (option in inventory) {
        FormBody += '<option value="' + option+ '">' + option + '</option>';
        console.log("loop: " + option);
    }
    FormBody += '</select>';
    $( "#b" ).html(FormBody)
}

function DisplayVals() {
    var AreaValue = $( "#Area" ).val();
    var FormBody = '<select id="Area2" onchange="DisplayVals2()">';
    console.log("AreaValue: " + AreaValue);
    for (option in inventory[AreaValue]) {
        FormBody += "<option>" + option + "</option>";
    }
    FormBody += "</select>";
    console.log('FormBody is: ' + FormBody);
    $( "#a" ).html(FormBody)
}

function DisplayVals2() {
    var AreaValue = $( "#Area" ).val();
    var AreaValue2 = $( "#Area2" ).val();
    var FormBody = "";
    var longest = 30;
    console.log("Populating " + AreaValue2);
    var spacer = 0;
    for (floor in inventory[AreaValue][AreaValue2]) {
        FormBody += '<div style="position: absolute; padding-left: 20px; left: ' + spacer + 'px; max-width: 30%;"><h1>Floor: ' + floor + '</h1>'
         for (option in inventory[AreaValue][AreaValue2][floor]) {
            name = inventory[AreaValue][AreaValue2][floor][option]["name"];
            id = inventory[AreaValue][AreaValue2][floor][option]["id"];
            section = inventory[AreaValue][AreaValue2][floor][option]["location"];
            padding = longest - name.length;
            FormBody += '<div id="MainDiv"><input type="checkbox" id="CB' + id + '" onclick="changeRadio(\'CB' + id + '\')">';
            FormBody += name + '<p>Location: ' + section + '</p><br>' ;
            FormBody += '<input type="radio" name="' + name + '-status" value="Working" id="BW' + id + '" disabled>Working<br>';
            FormBody += '<input type="radio" name="' + name + '-status" value="NotWorking" id="BN' + id + '" disabled>Faulty<br>';
            FormBody += '<textarea name="' + name + '-comment" placeholder="Comments" id="BC' + id + '" disabled></textarea></div><br><br>';
        }
        FormBody += '</div>'
        spacer = spacer + 600;
    }

    $( "#c" ).html(FormBody)
}

function changeRadio(item) {
    console.log('item is: ' + item);
    i = item.substr(2);
    console.log(i);
    BW = "BW" + i;
    BN = "BN" + i;
    BC = "BC" + i;
    console.log('i is: ' + i);
    if (document.getElementById(item).checked) {
        console.log('Checkbox is checked');
        document.getElementById(BN).disabled = false;
        document.getElementById(BW).disabled = false;
        document.getElementById(BC).disabled = false;
    }
    if (! document.getElementById(item).checked) {
        console.log('Checkbox is un-checked');
        document.getElementById(BN).disabled = true;
        document.getElementById(BW).disabled = true;
        document.getElementById(BC).disabled = true;
    }
}
FirstVals();
DisplayVals();
DisplayVals2();
$( "select" ).change( DisplayVals );
$( "select" ).change( DisplayVals2 );
</script>
</form>
</body>
</html>
