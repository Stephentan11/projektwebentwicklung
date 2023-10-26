% rebase('base.tpl', title='Museum')
% from benutzer import Benutzer


<h1 class="h1"> {{museum['name']}}</h1>

<div class ="row">
<div class= "museum-bild-detail">
<img class="title-image" src="{{museum['image']}}">
</div>
</div>

</div>

<div class ="row">
<div style= "overflow-x:auto;">
% if Benutzer().ist_eingeloggt():
    <a href="/merkliste/add/{{museum['id']}}" class="btn btn-primary">zur Merkliste hinzufügen</a>

% else:
    <p style="padding-left: 10px;">Bitte hier <a href="/login">anmelden</a>, wenn Sie das Museum zu Ihrer Merkliste hinzufügen wollen.</p>
    
% end

<table>
    <tr>
        <th>Beschreibung:</th>
        <td>{{museum['description']}}</td>
    </tr>
    <tr>
        <th>Offizielle Webseite des Museums:</th>
        <td><a href="{{museum['url']}}">{{museum['url']}}</a></td>
    </tr>
    <tr>
        <th>latitude:</th>
        <td>{{museum['latitude']}}</td>
    </tr>
    <tr>
        <th>longitude:</th>
        <td>{{museum['longitude']}}</td>
    </tr>
    <tr>
        <th>Museumsdirektor/-in:</th>
        <td>{{museum['directors']}}</td>
    </tr>
    <tr>
        <th>Gründung des Gebäudes:</th>
        <td>{{museum['foundingYear']}}</td>
    </tr>
</div>
</div>