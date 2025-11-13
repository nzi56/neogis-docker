from flask import Flask

app = Flask(__name__)

@app.route('/say-hellow', methods=['GET'])
def say_hellow():
    return 'hellow world'

if __name__ == '__main__':
    # Important: set debug=False if you use host='0.0.0.0'
    app.run(host='0.0.0.0', port=5000, debug=False)
