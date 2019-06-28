# -*- coding: utf-8 -*-
"""
-------------------------------------------------
   File Name：     app
   Description :
   Author :        JHao
   date：          2019/5/27
-------------------------------------------------
   Change Activity:
                   2019/5/27:
-------------------------------------------------
"""
__author__ = 'JHao'

from flask import Flask

app = Flask(__name__)


@app.route("/")
def index():
    return """
  <h1>Python Flask in Docker!</h1>
  <p>A sample web-app for running Flask inside Docker.</p>
  """


if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0")

