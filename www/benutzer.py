import sqlite3
from bottle import Bottle, template, static_file, request, redirect, response
class Benutzer(object):
    def __init__(self):
        self.db = sqlite3.connect('Benutzer.db',
                                  detect_types=sqlite3.PARSE_DECLTYPES | sqlite3.PARSE_COLNAMES)
        self.db.row_factory = sqlite3.Row

    def login_valid(self, benutzername, passwort):
        # Führe hier deine Überprüfungen für die Anmeldeinformationen durch
        # Zum Beispiel, überprüfe in der Datenbank, ob der Benutzername und das Passwort übereinstimmen
        # Rückgabe True, wenn die Anmeldeinformationen gültig sind, ansonsten False
        # Beispielüberprüfung: Vergleiche den Benutzernamen und das Passwort mit vordefinierten Werten
        valid_benutzername = 'Benutzer1'
        valid_passwort = 'passwort1'

        if benutzername == valid_benutzername and passwort == valid_passwort:
            return True
        else:
            return False

    def ist_eingeloggt(self):
        if request.cookies.get('user', default=None):
            return True
        return False

    def get_benutzerid(self, benutzername):
        c = self.db.cursor()

        id = c.execute("select ID from benutzer where Benutzername = ?",(benutzername, ))

        return id

    def ist_ausgeloggt(self):
        user_cookie = request.cookies.get('user', default=None)
        if user_cookie is not None and user_cookie != "":

            return True
        return False

    def ausloggen(self):
        #request.cookies.get('user')
        response.delete_cookie('user')