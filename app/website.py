from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return '<h1>Hello World!</h1>'

if __name__ == "__main__":
    # the "host" config to run on all your machine's IP addresses.
    # it makes your app externally visible from outside of the container
    # the port config sets which port your app is visible from, outbound from the container
    app.run(host='0.0.0.0', port=3000)