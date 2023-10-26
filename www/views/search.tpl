% rebase('base.tpl', title='Index')
<h2 class="" style="font-family: frykas light;font-weight: bold; padding-left: 10px;">Suchergebnisse f&uuml;r "{{ pattern }}"</h2>
<ul>
% for museum in museums:

<li class="py-2"><a href="museum/{{museum.get('id')}}">{{museum.get('name')}}</a></li>

% end

</ul>

