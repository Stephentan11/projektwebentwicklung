from bottle import default_app
import sqlite3
from datetime import date
from bottle import Bottle, template, static_file, request, redirect, response, route, run
from benutzer import Benutzer
from merkliste_class import Merkliste
from Kunstmuseum import Kunstmuseum



@route('/')
def index():
    return template('index')


@route('/museums')
def museums():
    db = Kunstmuseum()
    return template('museums', museums=db.museums())


@route('/museum/<id>')
def museum(id):
    db = Kunstmuseum()
    museum = db.museum(id)

    return template('museum', museum=db.museum(id))


@route('/impressum')
def impressum():
    return template('impressum')


@route('/ueber_uns')
def impressum():
    return template('ueber_uns')
    
    




@route('/profil')
@route('/profil/<benutzername>', method=['GET', 'POST'])
def show_profil(benutzername=request.cookies.get('user')):
    #code = hashlib.sha256(value).hexdigest()
    #response.set_cookie('user', user, max_age="100")

    if Benutzer().ist_eingeloggt():
        return template('Profil.tpl', benutzername='', login_error=False)
    redirect('/login')


@route('/login')
def login():
    abgemeldet = False
    error = False
    try:
        abgemeldet = request.query.get('logout')

    except:
        abgemeldet = False

    try:
        error = request.query.get('error')

    except:
        error = False
    return template('login.tpl', login_error=error, abgemeldet=abgemeldet)

@route("/login_verarbeitung", method="POST")
def login_verarbeitung():
    benutzername = request.forms.get('benutzername')
    passwort = request.forms.get('passwort')
    if Benutzer().login_valid(benutzername, passwort):
        response.set_cookie('user', benutzername, max_age="100")
        redirect('/profil/'+benutzername)

    else:
        redirect('/login?error=True')

@route('/logout', method = 'POST')
def logout():
    try:
        response.delete_cookie('user')
    except:
        pass
    redirect('/login?logout=True')
        #return login(abgemeldet = True)

@route('/login_error')
def show_login_error():
    return template('login.tpl', benutzername=None, login_error='Anmeldeinformationen ungültig.', abgemeldet = False)


@route('/merkliste')
def show_merkliste():
    merkliste = Merkliste()
    benutzerid = '1'  # Provide a valid value for benutzerid
    merkliste_data = merkliste.get_merkliste(benutzerid=benutzerid)
    return template('merkliste', merkliste_data=merkliste_data, Benutzer=benutzerid)


@route('/merkliste/add/<museum_id>')
def add_to_merkliste(museum_id):
   # museum_id = request.forms.get('museum_id')
    benutzerid = '1'  # Provide a valid value for benutzerid
    merkliste = Merkliste()
    merkliste.add_to_merkliste(museum_id, benutzerid)  # Pass both museum_id and benutzerid
    redirect('/merkliste')


@route('/merkliste/remove/<museum_id>')
def remove_from_merkliste(museum_id):
    #museum_id = request.forms.get('museum_id')
    benutzerid = '1'  # Provide a valid value for benutzerid
    merkliste = Merkliste()
    merkliste.remove_from_merkliste(museum_id, benutzerid)  # Only museum_id is required here
    redirect('/merkliste')



 




@route('/search', method='get')
def search():
    #pattern = request.forms.get('pattern')
    pattern = request.query.pattern
    db = Kunstmuseum()

    c = db.get_cursor()
    query = 'SELECT * FROM Kunstmuseum WHERE lower(Kunstmuseum.name) LIKE lower("%{}%")'.format(pattern)

    result = [dict(id=row['Item'], name=row['name']) for row in c.execute(query)]
    # result = c.execute(query)
    return template('search', pattern=pattern, museums=result)






    


@route('/static/<filepath>')
def server_static(filepath):
    return static_file(filepath, root='static')


# Entry in case of invocation of the application via the command line

if __name__ == '__main__':
    run(host='localhost', port=8090, debug=True, reloader=True)
