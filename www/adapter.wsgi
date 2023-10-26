# Siehe Kapitel 7 im Dokument "Einrichten Arbeitsumgebung"

import sys, os, bottle, subprocess

sys.path = [os.path.dirname(__file__)] + sys.path
os.chdir(os.path.dirname(__file__))

# App laden - Name muss entsprechend angepasst werden!
#from Kunstmuseum import app
import app
application = bottle.default_app()

