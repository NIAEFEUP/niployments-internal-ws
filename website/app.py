import sys
assert sys.version_info >= (3, 13, 0), "Python 3.13 or higher is required."

from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World, from Python 3.13!"
