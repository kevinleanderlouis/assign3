from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello_cloud():
    last_name = os.getenv('LAST_NAME', 'YourLastName')
    return f'Hello from {last_name} ECS Container!'

if __name__ == '__main__':
    app.run(host='0.0.0.0')
