#!/bin/python3

# importe flask
from flask import Flask

# crée une application flask
app = Flask(__name__)

# crée la route spécifié
@app.route('/')
def hello_world():
    # retourne le message spécifié
    return 'Hello Docker!\n'

# crée le programme principal
if __name__ == '__main__':
    # démarre l'application flash
    app.run(debug=True, host='0.0.0.0')
