from django.shortcuts import render , redirect
from orderapp.models import OrderModel
from orderapp.forms import OrderForm
import datetime
from cartapp.models import CartModel
from django.db import connection
from customerapp.models import CustomerModel
import psycopg2
# Create your views here.

def placeOrderView(request):
	form = OrderForm
	if request.method == 'POST':
		orderdate=datetime.date.today()
		email=request.session['email']
		conn = psycopg2.connect(database="store", user='postgres', password='rupali', host='127.0.0.1', port= '5432')
		cursor = conn.cursor()
		total = cursor.execute("select sum (p.price * c.productquantity) from tbl_product p inner join tbl_cart c on p.id= c.productfk and c.emailfk= %s",[email])
		print(total)
		print(orderdate)
		print(email)
		totalbill=float(cursor.fetchone()[0])
		print(totalbill)
		insertsql=""" insert into tbl_order(amount,date,emailfk)values(%s,%s,%s) """
		values=(totalbill,orderdate,email)
		cursor.execute(insertsql,values)
		conn.commit()
		cursor.close()
		conn.close()
		cart=CartModel.objects.filter(emailfk=email)
		cart.delete()
		return redirect('/orderapp/bill/')

def showOrder(request):
	form = OrderForm()
	emails=request.session['email']
	print(emails)
	orders=OrderModel.objects.filter(emailfk=emails)
	customer=CustomerModel.objects.filter(email=emails)
	print(customer)
	print(orders)
	return render(request,'orderapp/order.html',{'form':form ,'order':orders,'customer':customer})
	
def billGeneration(request):
	form = OrderForm()
	email=request.session['email']
	conn = psycopg2.connect(database="store", user='postgres', password='rupali', host='127.0.0.1', port= '5432')
	cursor = conn.cursor()
	customer = cursor.execute("select * from tbl_customer where email= %s",[email])
	result=cursor.fetchall() 
	print(result)
	for row in result:
		fname= row[1]
		lname= row[5]
		address =row[2]
		contact=row[4]
	cursor = conn.cursor()
	#total = cursor.execute("select sum (p.price * c.productquantity) from tbl_product p inner join tbl_cart c on p.id= c.productfk and c.emailfk= %s",[email])
	#total=cursor.execute("select  * from tbl_order where emailfk=%s order by id desc",[email])
	#totalp=int(cursor.fetchone())
	#print(totalp)
	#for row in totalp:
	#	total=row[3]
	#	print(total)
	#totalbill=float(totalp)
	##print(totalp)	 
	cursor.close()
	conn.close()
	return render(request,'orderapp/bill.html',{'form':form,'fname':fname ,'lname':lname , 'address':address ,'contact':contact})
	