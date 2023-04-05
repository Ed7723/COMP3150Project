from flask import Flask,render_template,flash,redirect,url_for
from flask_sqlalchemy import SQLAlchemy
import mysql.connector
from flask_wtf import FlaskForm
from wtforms import StringField,SubmitField,IntegerField
from wtforms.validators import DataRequired,Length,NumberRange

app = Flask(__name__)

app.config["SQLALCHEMY_DATABASE_URI"] = "mysql://root:<password>@localhost/covid-19_Schema"
app.config["SECRET_KEY"] = "38c87e6b7a0de1c82f109db695f1175f43ba70d4d98251ed00b3b8d6932f2f5d"

db = SQLAlchemy(app)

mydb = mysql.connector.connect(
            host = "localhost",
            user = "root",
            passwd = "<password>",
        )

cursor = mydb.cursor()  

# Models Section
class Hospital(db.Model):
    id = db.Column(db.Integer,primary_key = True)
    name = db.Column(db.String(40),unique = True,nullable = False)
    capacity = db.Column(db.Integer,nullable = False)

    def __repr__(self):
        return f"Name:('{self.name}, capacity: {self.capacity})"

# Forms Section

class createForm(FlaskForm):
    hosName = StringField('hosName',validators =[DataRequired(),Length(max=40)])
    hosCap = IntegerField('hosCap',validators =[DataRequired(),NumberRange(min=0, max=15, message='Improper Input')])
    submit = SubmitField('Add item')
        
class editForm(FlaskForm):
    hosName = StringField('hosName',validators =[DataRequired(),Length(max=40)])
    hosCap = IntegerField('hosCap',validators =[DataRequired(),NumberRange(min=0, max=15, message='Improper Input')])
    submit = SubmitField('Edit item')

# Routing Section
# Home route, renders home.html
@app.route("/")
def home():
    return render_template("view.html", title = 'Homepage')

@app.route("/create",methods = ['GET','POST'])
def create():
    form = createForm()
    if form.validate_on_submit():
        cursor.execute("SELECT * FROM `covid-19_Schema`.Hospital;")
        data = cursor.fetchall()
        lastVal = data[-1][0]
        sql = f"INSERT INTO `covid-19_Schema`.Hospital (Hospital_ID,Name, Capacity) VALUES (%s, %s, %s)"
        cursor.execute(sql,(lastVal+1,form.hosName.data, form.hosCap.data))
        mydb.commit()
        return redirect(url_for('view'))
    return render_template("create.html", title = 'Create Records',form = form)

# View route, renders view.html. Allows looking at items.
@app.route("/view")
def view():
    cursor.execute("SELECT * FROM `covid-19_Schema`.Hospital;")
    data = cursor.fetchall()
    return render_template("view.html", title = 'View Records',hospitals =data)

# @app.route('/edit/<int:hospital_id>', methods=['GET', 'POST'])
# def edit(field):
#     return render_template('edit.html' ,title = 'Edit Records')

# @app.route('/delete/<int:hospital_id>', methods=['POST'])
# def delete(field):
#     return redirect(url_for('view'))