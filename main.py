from flask import Flask, render_template
import os

app = Flask(__name__)


@app.route('/')
def home():
  return "Hello, world! Here's my favorite film quote: 'live fast , die handsome.' Moesha, Hayri"
  


if __name__ == "__main__":
  port = int(os.environ.get('PORT', 3030))
  app.run(debug=True, host='0.0.0.0', port=port)