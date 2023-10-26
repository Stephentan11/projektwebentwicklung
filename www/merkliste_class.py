import sqlite3

class Merkliste(object):
    def __init__(self):
        self.db = sqlite3.connect('Merkliste.db',
                                  detect_types=sqlite3.PARSE_DECLTYPES | sqlite3.PARSE_COLNAMES)
        self.db.row_factory = sqlite3.Row

    def add_to_merkliste(self, kunstmuseumitem, benutzerid):
        c = self.db.cursor()
        c.execute('INSERT INTO Merkliste (KunstmuseumItem, BenutzerID) VALUES (?, ?)', (kunstmuseumitem, benutzerid))
        self.db.commit()


    def remove_from_merkliste(self, kunstmuseumitem, benutzerid):
        c = self.db.cursor()
        c.execute('DELETE FROM Merkliste WHERE KunstmuseumItem = ? AND BenutzerID = ?', (kunstmuseumitem, benutzerid))
        self.db.commit()



    def get_merkliste(self, benutzerid):
        c = self.db.cursor()
        query = '''
            SELECT *
            FROM Merkliste AS m
            WHERE m.BenutzerID = ?
        '''

        result = [dict(id=row['MERKLISTEID'], kunstmuseumitem=row['KunstmuseumItem'], benutzer=row['BenutzerID']) for row in c.execute(query, (benutzerid,))]
        return result
