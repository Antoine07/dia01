from flask import Flask, render_template, session, request, redirect
import base64
from io import BytesIO
from matplotlib.figure import Figure

import pandas as pd
import numpy as np

# Data
import seaborn as sns

titanic = sns.load_dataset('titanic').loc[:, ['survived', 'sex', 'pclass']]

app = Flask(__name__)

@app.route('/')
def index():
    return "Hello world !"

@app.route("/titanic/<survived>", methods=("POST", "GET"))
def album(survived=None):
    survived = int(survived)
    mask = (titanic.survived == survived)

    print(titanic[mask].values)

    return render_template('home.html',
                           count=mask.sum(),
                           persons=titanic[mask].values,
                           titles=titanic.columns.values
                           )

@app.route("/test")
def hello():
    # Generate the figure **without using pyplot**.
    fig = Figure()
    ax = fig.subplots()
    ax.plot([1, 2])
    # Save it to a temporary buffer.
    buf = BytesIO()
    fig.savefig(buf, format="png")
    # Embed the result in the html output.
    data = base64.b64encode(buf.getbuffer()).decode("ascii")

    return f"<img src='data:image/png;base64,{data}'/>"


if __name__ == "__main__":
    app.run(debug=True)