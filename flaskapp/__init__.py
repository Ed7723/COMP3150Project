from flask import Flask,render_template,flash,redirect,url_for
from flask_sqlalchemy import SQLAlchemy
import mysql.connector
from flask_wtf import FlaskForm
from wtforms import StringField,SubmitField,IntegerField, SelectField
from wtforms.validators import DataRequired,Length,NumberRange

app = Flask(__name__)
# Change password
app.config["SQLALCHEMY_DATABASE_URI"] = "mysql://root:<password>@localhost/covid-19_Schema"
app.config["SECRET_KEY"] = "38c87e6b7a0de1c82f109db695f1175f43ba70d4d98251ed00b3b8d6932f2f5d"

db = SQLAlchemy(app)
#Change password
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

class selectDB(FlaskForm):
    selectTable = SelectField(u'Choose database', 
    choices=[
        ('Hospital', 'Hospital'),
        ('Covid Case', 'Covid Case'),
        ('Covid Case Record', 'Covid Case Record'),
        ('Covid Test', 'Covid Test'),
        ('Covid Vaccine', 'Covid Vaccine'),
        ('Hospitilization', 'Hospitilization'),
        ('Patient', 'Patient'),
        ('Positive Test', 'Positive Test'),
        ('Province', 'Province'),
        ('Region', 'Region'),
        ('Vaccination Record', 'Vaccination Record'),
        ])
    submit = SubmitField('Select')

# Routing Section
# Home route, renders home.html
@app.route("/")
def home():
    form = selectDB()
    return render_template("home.html", title = 'Homepage',form = form)

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
@app.route("/view",methods = ['GET','POST'])
def view():
    form = selectDB()
    cursor.execute(f"SELECT * FROM `covid-19_Schema`.`{form.selectTable.data}`;")
    queryData = cursor.fetchall()
    num_fields = len(cursor.description)
    field_names = [i[0] for i in cursor.description]
    return render_template("view.html", title = 'View Records', queries=queryData, headings=field_names,num_fields=num_fields)
