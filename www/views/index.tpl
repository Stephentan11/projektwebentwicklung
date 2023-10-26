% rebase('base.tpl', title='Index')
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js" integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" crossorigin=""></script>
<h1 style="padding-top: 40px; padding-bottom: 40px;">
  Herzlich Willkommen auf unserer Seite.<br> Hier können Sie sich einen Überblick über Kunstmuseen in Hessen beschaffen.
</h1>

<div id="map" style="width: 1200px; height: 800px; margin: auto;"></div>


<script>
const map = L.map('map', {
  center: [50.3309, 8.7511],
  zoom: 8
  });
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', { attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors' }).addTo(map);

var markerIcon = L.icon({
    iconUrl: '/static/marker-map-braun.svg',
    iconSize: [40, 40], // Hier kannst du die Breite und Höhe des Icons anpassen
    iconAnchor: [20, 40],
    popupAnchor: [0, -40]
});

L.marker([51.5, -0.09], { icon: markerIcon }).addTo(map);

 const coordinates = [
      [50.1089, 8.67853],
      [50.1102, 8.68511],
      [50.104975, 8.6773143],
      [49.663002777778, 9.00075],
      [50.105, 8.67778],
      [52.389672, 13.119806],
      [50.1107, 8.6828],
      [51.315, 9.41611],
      [49.87195, 8.64185],
      [50.1019, 8.67167],
      [50.808738, 8.773141],
      [50.1064, 8.68139],
      [50.1015, 8.6706],
      [50.0775, 8.245833],
      [50.1044, 8.67528],
      [50.1121, 8.685],
      [50.0797601, 8.2454258],
      [51.3093, 9.49324],
      [50.110278, 8.683611],
      [50.1032, 8.673028]
    ];
    
    const bounds = L.latLngBounds(coordinates);


//Add markers for museums using the coordinates from your database

const marker1 = L.marker([50.1089, 8.67853])
  .addTo(map)
  .bindPopup(`
    <h3>Archäologisches Museum Frankfurt</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/636924">hier</a>.</p>
  `);
  
const marker2 = L.marker([50.1102, 8.68511])
   .addTo(map)
    .bindPopup(`
    <h3>Caricatura Museum für Komische Kunst</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/1525564">hier</a>.</p>
    `);

const marker3 = L.marker([50.104975, 8.6773143])
    .addTo(map)
    .bindPopup(`
    <h3>Deutsches Architekturmuseum</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/885179">hier</a>.</p>
    `);    

const marker4 = L.marker([49.663002777778, 9.00075])
    .addTo(map)
    .bindPopup(`
    <h3>Deutsches Elfenbeinmuseum</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/1205606">hier</a>.</p>
    `);   

const marker5 = L.marker([50.105, 8.67778])
    .addTo(map)
    .bindPopup(`
    <h3>Deutsches Filmmuseum</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/1205629">hier</a>.</p>
   `); 

const marker6 = L.marker([52.389672, 13.119806])
    .addTo(map)
    .bindPopup(`
    <h3>Deutsches Rundfunkarchiv</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/1205934">hier</a>.</p>
   `);

const marker7 = L.marker([50.1107, 8.6828])
    .addTo(map)
   .bindPopup(`
   <h3>Frankfurter Kunstverein</h3>
   <p>Weitere Informationen zum Museum finden Sie <a href="/museum/1444994">hier</a>.</p>
  `);
   

const marker8 = L.marker([51.315, 9.41611])
    .addTo(map)
    .bindPopup(`
    <h3>Gemäldegalerie Alte Meister</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/1501219">hier</a>.</p>
   `);

const marker9 = L.marker([49.87195, 8.64185])
    .addTo(map)
    .bindPopup(`
    <h3>Kunsthalle Darmstadt</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/17493645">hier</a>.</p>
   `);

const marker10 = L.marker([50.1019, 8.67167])
    .addTo(map)
    .bindPopup(`
    <h3>Liebieghaus</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/1823966">hier</a>.</p>
   `);

const marker11 =L.marker([50.808738, 8.773141])
    .addTo(map)
    .bindPopup(`
    <h3>Marburger Kunstverein</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/1270251">hier</a>.</p>
   `);
    

const marker12 =L.marker([50.1064, 8.68139])
    .addTo(map)
    .bindPopup(`
    <h3>Museum Angewandte Kunst</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/198418">hier</a>.</p>
   `);
    
const marker13 =L.marker([50.1015, 8.6706])
    .addTo(map)
    .bindPopup(`
    <h3>Museum Giersch der Goethe-Universität</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/1954440">hier</a>.</p>
   `);

const marker14 =L.marker([50.0775, 8.245833])
    .addTo(map)
    .bindPopup(`
    <h3>Museum Wiesbaden</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/316514">hier</a>.</p>
   `);
    

const marker15 =L.marker([50.1044, 8.67528])
    .addTo(map)
    .bindPopup(`
    <h3>Museum für Kommunikation Frankfurt</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/1954640">hier</a>.</p>
   `);
    

const marker16 = L.marker([50.1121, 8.685])
    .addTo(map)
    .bindPopup(`
    <h3>Museum für Moderne Kunst</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/456994">hier</a>.</p>
   `);
    

const marker17 =L.marker([50.0797601, 8.2454258])
    .addTo(map)
    .bindPopup(`
    <h3>Nassauischer Kunstverein</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/1774413">hier</a>.</p>
   `);
    
    

const marker18 = L.marker([51.3093, 9.49324])
    .addTo(map)
    .bindPopup(`
    <h3>Neue Galerie</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/869781">hier</a>.</p>
   `);
    

const marker19 =L.marker([50.110278, 8.683611])
    .addTo(map)
    .bindPopup(`
    <h3>Schirn Kunsthalle Frankfurt</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/176293">hier</a>.</p>
   `);
    

const marker20 =L.marker([50.1032, 8.673028])
    .addTo(map)
    .bindPopup(`
    <h3>Städel</h3>
    <p>Weitere Informationen zum Museum finden Sie <a href="/museum/163804">hier</a>.</p>
   `);
    
    



</script>



<!---Bootstrap Java--->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.min.js"></script>
</script>
