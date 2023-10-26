% rebase('base.tpl', title='Profil')
% from bottle import request
% from benutzer import Benutzer

% if not Benutzer().ist_eingeloggt():
% redirect("/login")
% end



<div class='Profil'>
<h2 class="Profil-Überschrift">Profil</h2>

<p>Benutzername: {{ request.cookies.get('user') }}</p>
<h3 class="Willkommen-Überschrift">Willkommen zurück, {{ request.cookies.get('user') }}!</h3>


% if Benutzer().ist_eingeloggt():
<a href="/merkliste">Sieh dir hier deine Merkliste an</a>
% end

<form action='/logout' method='post'>
    <button class="btn btn-outline-success" type="submit">Ausloggen</button>
</form>






