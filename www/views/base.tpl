<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!---Leaflet CSS--->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY=" crossorigin="" />
    <!---Bootstrap CSS--->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link href="/static/eigenes.css" type = "text/css" rel="stylesheet">


    <title>Museum Marker</title>
</head>

<body>
<nav class="navbar sticky-top navbar-expand-lg navbar-light px-5">
  <a href="/" class="navbar-brand mb-0 h1">
    <span style="font-weight: bold; font-family: frykas light; font-size: 24px;">Museum Marker</span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
        <a class="nav-link" href="/museums">Museumsliste</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/merkliste">Merkliste</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/login">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/profil">Profil</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/impressum">Impressum</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/ueber_uns">Über uns</a>
      </li>
      </ul>
      <form class="d-flex" role="search" method="get" action="/search">
        <input name="pattern" class="form-control me-2" type="search" placeholder="Suchbegriff eingeben" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Suche</button>
      </form>
    </div>
  </div>
</nav>

{{!base}}



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous">
</script>


</body>
</html>

