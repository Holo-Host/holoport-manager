#! /nix/var/nix/profiles/default/bin/python
from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/')
def index():
    example = "Hello, World!"
    return jsonify(response=example)

@app.route('/support', methods=['GET', 'POST'])
def support():
    if request.method == 'POST':
        print(request.is_json)
        sshpubkey = request.get_json()
        print(sshpubkey)
        return jsonify(sshpubkey)
    else:
        return jsonify(readings="GET")


if __name__ == '__main__':
    app.run(debug=True)

