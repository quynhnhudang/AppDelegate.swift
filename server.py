from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/upload_heartbeat', methods=['POST'])
def upload_heartbeat():
    data = request.json
    # Store data in a database or process it as needed
    print("Received heartbeat data:", data)
    return jsonify({'status': 'success'})

if __name__ == '__main__':
    app.run(debug=True)
