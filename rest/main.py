from flask import Flask
# from flask_basicauth import BasicAuth
from flask_restful import Resource, Api

app = Flask(__name__)

# app.config['BASIC_AUTH_USERNAME'] = 'basic'
# app.config['BASIC_AUTH_PASSWORD'] = 'auth'

# auth = BasicAuth(app)
api = Api(app)


class MainWeb(Resource):
    
    # @auth.required
    def get(self):
        return { 'message': 'oks' }

api.add_resource(MainWeb, '/')

if __name__ == '__main__':
    app.run(host="0.0.0.0", debug=True)