import sqlite3

inventory = {}

conn = sqlite3.connect('C:\\Users\\v-red01\\Documents\\SQLite\\BrickLaneFacilities.db')
c = conn.cursor()
for row in c.execute('''
select managementarea.name, types.name, floors.name, thing.name, thing.id, location.name from Thing 
left join floors on thing.floors = floors.id 
left join location on thing.location = location.ID 
left join types on thing.type = types.id 
left join managementarea on thing.management = managementarea.id'''):
    if row[0] not in inventory.keys():
        inventory[row[0]] = {}

    if row[1] not in inventory[row[0]].keys():
        inventory[row[0]][row[1]] = {}

    if row[2] not in inventory[row[0]][row[1]].keys():
        inventory[row[0]][row[1]][row[2]] = []

    thing = {"name": row[3], "id": row[4], "location": row[5]}
    inventory[row[0]][row[1]][row[2]].append(thing)

def GetData():
    table = []
    conn = sqlite3.connect('C:\\Users\\v-red01\\Documents\\SQLite\\BrickLaneFacilities.db')
    c = conn.cursor()

    table.append('<thead>')
    table.append('<tr>')
    table.append('<th> Device </th>')
    table.append('<th> Floor Number </th>')
    table.append('<th> Status </th>')
    table.append('<th> Comments </th>')
    table.append('</tr>')
    table.append('</thead>')

    table.append('<tbody>')
    for row in c.execute('''
select Thing.Name, Floors.Name, Status.Name, ThingStatus.Comment from ThingStatus
left join Thing on ThingStatus.Thing = Thing.ID
left join Status on ThingStatus.status = Status.ID
left join Floors on Thing.Floors = Floors.Name'''):
        table.append('<tr>')
        for i in range(len(row)):
            table.append('<td>%s</td>' %(row[i]))
        table.append('</tr>\n')

    table.append('</tbody>')
    return ''.join(table)