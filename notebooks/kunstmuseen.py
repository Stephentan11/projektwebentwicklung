import sqlite3
import json

filename = "../www/Kunstmuseen_Hessen.db"
db = sqlite3.connect(filename, detect_types=sqlite3.PARSE_DECLTYPES | sqlite3.PARSE_COLNAMES)

c = db.cursor()

# Create table 'Kunstmuseum'
c.execute('DROP TABLE IF EXISTS Kunstmuseum')
c.execute('''
          CREATE TABLE Kunstmuseum (
              Item varchar PRIMARY KEY,
              name varchar,
              description varchar,
              image varchar,
              url varchar,
              latitude REAL,
              longitude REAL,
              directors varchar,
              foundingYear REAL
         )
''')

print(c)

with open('Kunstmuseum.json', 'r', encoding="utf-8") as f:
    json_content = f.read()
    data = json.loads(json_content)

    results = data['results']['bindings']  # Access the 'bindings' key within 'results' to get the data entries

    for entry in results:
        t = (
            entry['item']['value'][32:],
            entry['name']['value'],
            entry['description']['value'],
            entry.get('image', {}).get('value'),
            entry.get('url', {}).get('value'),
            entry.get('latitude', {}).get('value'),
            entry.get('longitude', {}).get('value'),
            entry.get('directors', {}).get('value'),
            entry.get('foundingYear', {}).get('value')
        )
        # Delete the existing row with the same item value
        c.execute('DELETE FROM Kunstmuseum WHERE item = ?', (t[0],))

        # Insert the new row
        c.execute(
            'INSERT INTO Kunstmuseum (item, name, description, image, url,latitude, longitude, directors, foundingYear) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)',
            t)

        db.commit()

results = c.execute('SELECT * FROM Kunstmuseum')
for row in results:
    print(row)

c.close()