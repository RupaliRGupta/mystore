from django.shortcuts import render,redirect
from staffapp.models import StaffModel ,AdminModel
from staffapp.forms import StaffForm

# Create your views here

def addStaff(request):
	form = StaffForm()
	if request.method=='POST':
		form=StaffForm(request.POST)
		if form.is_valid():
			form.save()
			return redirect('/productapp/showproduct/')
	return render(request,'staffapp/addstaff.html',{'form':form})		
	
	
def SAlogin(request):
	print("1")
	form = StaffForm()
	if request.method == 'POST':
		print("2")
		email=request.POST['email']
		password=request.POST['password']
		role=request.POST['role']
		print(role)
		print("3")
		allstaff=StaffModel.objects.raw("select * from tbl_staff")
		alladmin=AdminModel.objects.raw("select * from tbl_admin")
		if role=='staff':
			print("in staff")
			for s in allstaff:
				if s.email==email and s.password==password:
					request.session['role']="staff"
					return redirect('/productapp/showproduct/')
		elif role=='admin':
			for a in alladmin:
				print("in admin")
				if a.username==email and a.password==password:
					request.session['role']="admin"
					return redirect('/productapp/showproduct/')
	return render(request,'staffapp/salogin.html',{'form':form })				