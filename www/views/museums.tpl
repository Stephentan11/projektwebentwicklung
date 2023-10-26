% rebase('base.tpl', title='Museum')
<h2 class="liste">Museumsliste</h2>
<ol class="liste">
    % for museum in museums:
    <li>
        <div class="tooltip-museumsliste">
            <a href="/museum/{{museum['id']}}">
                <span>{{museum['name']}}</span>
                <span class="tooltip-museumsliste-text">Klicke hier für mehr Details</span>
            </a>
        </div>
    </li>
    %end
</ol>
