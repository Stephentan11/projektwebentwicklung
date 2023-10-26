import sqlite3

filename = "Merkliste.db"
db = sqlite3.connect(filename, detect_types=sqlite3.PARSE_DECLTYPES | sqlite3.PARSE_COLNAMES)

d = db.cursor()

d.execute("""
          create table if not exists Merkliste (
            MERKLISTEID Integer primary key,
            KunstmuseumItem Integer,
            BenutzerID Integer
            
        )  
""")

db.commit()
"""
Foreign key (BenutzerID) 
                references Benutzer (ID)
                    ON UPDATE cascade
                    ON DELETE cascade,
            Foreign key (KunstmuseumItem) 
                references Kunstmuseum_Hessen (Item)
                    ON UPDATE cascade
                    ON DELETE cascade
                    """