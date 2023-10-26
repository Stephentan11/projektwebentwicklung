import sqlite3
from datetime import date


class Kunstmuseum(object):

    def __init__(self):
        self.db = sqlite3.connect('Kunstmuseen_Hessen.db',
                                  detect_types=sqlite3.PARSE_DECLTYPES | sqlite3.PARSE_COLNAMES)
        self.db.row_factory = sqlite3.Row

    def museums(self):
        c = self.db.cursor()
        return [dict(id=row['Item'], name=row['name'])
                for row in c.execute('SELECT Item, name FROM Kunstmuseum ORDER BY name')]

    def museum(self, id):
        c = self.db.cursor()
        c.execute('SELECT * FROM Kunstmuseum WHERE Item = ?', (id,))
        row = c.fetchone()
        if row is None:
            return None

        foundingYear = "keine Information vorhanden"
        if row['foundingYear'] != None:
            foundingYear = date.fromisoformat(row['foundingYear'][:10]).strftime('%d.%m.%Y')

        return dict(id=row['Item'],
                    name=row['name'],
                    description=row['description'],
                    image=row['image'],
                    url=row['url'],
                    latitude=row['latitude'],
                    longitude=row['longitude'],
                    directors=row['directors'],
                    foundingYear=foundingYear
                    )

    def search(self, pattern):
        c = self.db.cursor()
        query = 'SELECT * FROM Kunstmuseum WHERE lower(Kunstmuseum.Item) LIKE lower("%{}%")'.format(pattern)
        result = [dict(id=row['Item'], name=row['name']) for row in c.execute(query)]
        return template('search', pattern=pattern, museums=result)

    def get_cursor(self):
        return self.db.cursor()

    def get_museumsname(self, museumsid):
        c = self.db.cursor()
        query = 'SELECT name FROM Kunstmuseum WHERE Item = ? '
        result = [dict(name=row['name']) for row in c.execute(query, (museumsid,))]
        return result[0]
