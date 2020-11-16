from flask import Flask, render_template
import platform
import datetime

time = datetime.datetime.now()
hostname = platform.node()

app = Flask(__name__)

@app.route('/')
def index():
    return render_template("index.html", hostname=hostname, time=time)

@app.route('/info')
def hello():
    return "v1.0 - The hostname is: <b>" + hostname + "</b> and the container create time was: <b>" + str(time) + "</b> \n"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)
