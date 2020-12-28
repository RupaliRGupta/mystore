from django.shortcuts import render, redirect
from cartapp.models import CartModel
from cartapp.forms import CartForm

# Create your views here.

def showAllToCartView(request,id):
	form = CartForm()
	return render(request,'cartapp/addcart.html',{'form':form , 'productfk':id})
	
def addToCartView(request):
	form=CartForm()
	if request.method == 'POST':
		form=CartForm(request.POST)
		if form.is_valid():
			form.save()
			return redirect('/productapp/showproduct/')
	return render(request,'cartapp/addcart.html',{'form':form,'productfk':id})	

def showCart(request):
		email=request.session['email']
		cart=CartModel.objects.raw("select c.id,p.img ,p.name ,p.totalp ,c.productquantity from tbl_product p inner join tbl_cart c  on  c.productfk = p.id and c.emailfk= %s", [email])
		print(cart)
		return render(request,"cartapp/cart.html",{'cart':cart})
		
def removeproduct(request,id):
	cart=CartModel.objects.get(id=id)
	cart.delete()
	return redirect('/cartapp/cart/')