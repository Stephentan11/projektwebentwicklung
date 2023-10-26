% rebase('base.tpl', title='login')
% from benutzer import Benutzer

% if Benutzer().ist_eingeloggt():
    <p>Du bist bereits eingeloggt.</p>
% elif abgemeldet:
    <p style="padding-left: 10px;">Erfolgreich ausgeloggt.</p>
% elif login_error:
    <p>Anmeldeinformationen ungültig</p>
% end

% if not Benutzer().ist_eingeloggt():
    <div class="impressum position-absolute top-50 start-50 translate-middle">
        <div class="row">
            <div class="col-md-6 offset-md-3 d-flex justify-content-center">
                <form action="login_verarbeitung" method="post" style="margin-top: 150px; margin-bottom: 150px;">
                    <div class="form-group">
                        <label for="benutzername" style="color: black; font-family: frykas light; font-size: 20px;">Benutzername:</label>
                        <input type="text" class="form-control" id="benutzername" name="benutzername" required>
                    </div>
                    <div class="form-group">
                        <label for="passwort" style="color: black; font-family: frykas light; font-size: 20px;">Passwort:</label>
                        <input type="password" class="form-control" id="passwort" name="passwort" required>
                    </div>
                    <div class="form-group">
                        <button class="btn btn-outline-success" type="submit">Einloggen</button>
                    </div>
                </form>
            </div>
        </div>
    </div>




% end
