from flask import Flask, render_template, jsonify
import socket
import requests

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/api/info')
def get_info():
    pod_ip = socket.gethostbyname(socket.gethostname())
    public_ip = requests.get("https://api.ipify.org").text
    return jsonify({
        "pod_ip": pod_ip,
        "public_ip": public_ip
    })

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80)

