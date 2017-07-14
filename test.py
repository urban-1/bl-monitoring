from bottle import route, run, template, request
import config as cfg

item = []


def getitems():
    for num in range(0): #AmountOfData
        for i in range(4):
            print('')
            #item.append() #Device name, Floor Num, Status, Comments
    return item


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
    for key, v in request.POST.items():
        print('%s-%s' %(key, v))
    return


run(host='localhost', port=8080, reloader=True)

