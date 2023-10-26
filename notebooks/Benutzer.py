import sqlite3


filename = "../www/Benutzer.db"
db = sqlite3.connect(filename, detect_types=sqlite3.PARSE_DECLTYPES | sqlite3.PARSE_COLNAMES)

b = db.cursor()

# Create table 'Benutzer'
b.execute('''
          CREATE TABLE IF NOT EXISTS Benutzer (
              ID INTEGER PRIMARY KEY,
              Benutzername varchar NOT NULL,
              Passwort varchar NOT NULL
         )
''')

#Benutzerdaten einfügen
benutzer = [
        ('Benutzer1', 'passwort1')
]
b.executemany('INSERT OR IGNORE INTO Benutzer(benutzername, passwort) VALUES (?,?)', benutzer)

#Änderung in DB bestätigen
db.commit()

