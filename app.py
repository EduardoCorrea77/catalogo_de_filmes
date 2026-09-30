from flask import Flask

app = Flask(__name__)

@app.route('/index')
def home():
    return '<h1>Hello World!</h1>'

@app.route('/usuario')
def buscar_usuario():
    usuario = {
        "nome": "Eduardo",
        "idade": 16,
        "telefone": "(19) 992781680"
    }
    return usuario

if __name__ == '__main__':
    app.run(debug=True)