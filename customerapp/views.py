from django.shortcuts import render,redirect
from customerapp.models import CustomerModel
from customerapp.forms import CustomerForm

# Create your views here.
def addCustomer(request):
	form = CustomerForm()
	if request.method == 'POST':
		form=CustomerForm(request.POST)
		if form.is_valid():
			form.save()
			return redirect('/customerapp/login/')
	return render(request ,'customerapp/addcustomer.html',{'form':form})

def custmerLogin(request):
	print('login')
	customerform=CustomerForm()
	if request.method == 'POST':
		print("1")
		customerform=CustomerForm(request.POST)
		print(customerform)
		print("2")
		email=request.POST['email']
		password=request.POST['password']
		print(email)
		print(password)
		allcustomer=CustomerModel.objects.raw("select * from tbl_customer")
		print("3")
		print(allcustomer)
		for c in allcustomer:
			print(c.email)
			print(c.password)
			print(4)
			if c.email==email and c.password==password:
				print("5")
				request.session['email']=email
				request.session['role']="user"
				print("6")
				return redirect('/productapp/showproduct/')
	return  render(request,'customerapp/login.html')	

def logout(request):
	request.session.clear()
	return redirect('/productapp/showproduct/')