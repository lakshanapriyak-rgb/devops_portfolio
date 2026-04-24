from flask import Flask, render_template
# import Flask library into our code

app = Flask(__name__)

# create a Flask application instance
@app.route('/')
 # define the URL route for homepage
def home():
    # create a function that runs when homepage is visited
    return render_template('index.html')
    # load and display index.html file in the browser

if __name__ == '__main__':
    # to run the server only when this file is directly executed
    app.run(debug=True, host='0.0.0.0', port=5000)
 # start the Flask server on port 5000
