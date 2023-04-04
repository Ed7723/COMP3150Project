from flask import Flask,render_template,flash,redirect,url_for
from flask_mysqldb import MySQL

app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'flask'

mysql = MySQL(app)




# Home route, renders home.html
@app.route("/")
def home():
    return render_template("view.html", title = 'Homepage')

# Create route, renders create.html. Allows get and post for creating items
# Post method will use form created from forms.py and then validate it. If successful, will flash a message and 
# then redirect to view page.
@app.route("/create",methods = ['GET','POST'])
def create():
    pass
    return render_template("create.html", title = 'Create Items')

# View route, renders view.html. Allows looking at items.
@app.route("/view")
def view():
    pass
    return render_template("view.html", title = 'View Items')

@app.route('/edit/<int:item_id>', methods=['GET', 'POST'])
def edit():
    pass
    return render_template('edit.html' ,title = 'Edit Items')

@app.route('/delete/<int:item_id>', methods=['POST'])
def delete(item_id):
    pass
    return redirect(url_for('view'))