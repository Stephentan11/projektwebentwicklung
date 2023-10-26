% rebase('base.tpl', title='merkliste')

% from bottle import request
% from merkliste_class import Merkliste
% from Kunstmuseum import Kunstmuseum
% from benutzer import Benutzer
<div class="impressum position-absolute top-50 start-50 translate-middle">


<h1 class="Merkliste-Überschrift">Merkliste</h1>

% if Benutzer().ist_eingeloggt():
    % if merkliste_data:
        <ul class= "Merkliste-Liste">
        % for item in merkliste_data:
            <li class="Merkliste-item">
            % name = Kunstmuseum().get_museumsname(item['kunstmuseumitem'])
                <a href="/museum/{{ item['kunstmuseumitem'] }}" class="Merkliste-Link">{{ name['name'] }}</a>
                <a href="/merkliste/remove/{{ item['kunstmuseumitem'] }}" class="btn btn-primary">aus Merkliste entfernen</a>
        
            </li>
        % end
        </ul>
    % else:
        <p class="leere Merkliste">Die Merkliste ist leer.</p>
    % end
% else:
    <p class="Anmelden-Text">Sie müssen angemeldet sein, um auf Ihre Merkliste zugreifen zu können.</p>
    <p class="Anmelden-Link">Bitte hier <a href="/login">anmelden</a>.</p>
% end



