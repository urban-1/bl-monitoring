from bottle import route, run, template, request
import config as cfg
import sqlite3

conn = cfg.conn
c = conn.cursor()
item = []


@route('/')
def home():
    table = cfg.GetData()
    return template('Display', table=table);


@route('/input')
@route('/input/')
def usrinput():
    return template('usrinput', inventory=cfg.inventory);


@route('/input', method="POST")
def data():
    if len(request.POST) == 0:
        return template('usrinput', inventory=cfg.inventory);

    for key, value in request.POST.items():
        name,style = key.split("-")
        result = c.execute("""SELECT ID FROM Thing WHERE Name = '%s' LIMIT 1""" %(name)).fetchone()

        if style == "Working":
            styleStatus = 1
        else:
            styleStatus = 2
        c.execute("""UPDATE ThingStatus SET Status = '%s', Comment = '%s' WHERE Thing = %s""" %(styleStatus, value, result[0]))

    conn.commit()
    return template('Thanks')


run(host='localhost', port=8080, reloader=True)
