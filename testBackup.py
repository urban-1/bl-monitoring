from bottle import route, run, template
import random

DoorName = []
item = []
rows = 3
RandomStatus = ['Working - Not in use', 'Working - In use', 'Broken']


def getitems():
    for num in range(30):
        item.append('Door-%s' %(num))
        item.append('%s' %(round(num/3)))
        item.append('%s' %(random.choice(RandomStatus)))
    return item


@route('/')
def home():
    head ='''
    <!DOCTYPE html>
    <html lang="en">
    <title>Home</title>
    <head>
    <style>
    table
    {
        margin: auto;
        font-family: arial, sans - serif;
        border-collapse: collapse;
        width: 80%;
    }
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
    .even
    {
        background-color: #dddddd;
        border: 1px solid white;
    }
    </style >
    </head>'''
    body = '''
    <body>
    <table>
    <tr>
    <th> Device </th>
    <th> Floor Number </th>
    <th> Status </th>
    </tr>'''
    footer = '''
    </table>
    </body>'''
    item = getitems()
    for i in range(0,len(item),3):
        if ( i % 2 == 0):
            body += ('<tr class="even">\n    <td class="even">%s</td>\n    <td class="even">%s</td>\n    <td class="even">%s</td>\n</tr>' % (item[0+i], item[1+i], item[2+i]))
        else:
            body += ('<tr>\n    <td>%s</td>\n    <td>%s</td>\n    <td>%s</td>\n</tr>' % (item[0 + i], item[1 + i], item[2 + i]))

    body = ('%s %s %s' %(head, body, footer) )
    return body


@route('/input/')
def usrinput():
    global DoorName, rows
    for i in range(1,rows+1):
        DoorName.append( ( "Door-%s" %(i) ) )
    body = '''
    <!DOCTYPE html>
    <html lang="en">
    <title>Test</title>
    <form action="">
    Status update: 
    <select id="Area">
    <option value="Security">Security</option>
    <option value="EmpSys">Employee systems</option>
    </select>
    <a></a>
    <c></c>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script>
    function DisplayVals() {
        var AreaValue = $( "#Area" ).val();
        console.log(AreaValue)
            FormBody = '<select id="Area2" onchange="DisplayVals2()">'
        if (AreaValue == "EmpSys") {
            FormBody += "<option>Lights</option>"
            FormBody += "<option>Air Conditioning</option>"
        } else if (AreaValue == "Security") {
            FormBody += "<option>Doors</option>"
            FormBody += "<option>Pods</option>"
        }        
        FormBody += "</select>"
        $( "a" ).html(FormBody)
    }
    function DisplayVals2() {
        var AreaValue2 = $( "#Area2" ).val();
        console.log(AreaValue2)
            FormBody = '<select id="Area3">'
        for(i = 1; i < 11; i++) {
            FormBody += "<option>"
            FormBody += AreaValue2 + '-' + i 
            FormBody += "</option>"
        }
        FormBody += "</select>"
        $( "c" ).html(FormBody)
    }
    $( "select" ).change( DisplayVals );
    $( "select" ).change( DisplayVals2 );
    DisplayVals();
    DisplayVals2();
    </script>
    <input type="text" name="ValueData" value="DATA">
    <input type="submit" value="Submit">
    <html>
    <head>
    <style>'''
    bottom = '''
    </body>
    </form>'''
    body = ('%s %s %s' %(body, DoorName, bottom) )
    return body


run(host='localhost', port=8080, reloader=True)

