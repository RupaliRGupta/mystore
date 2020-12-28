from django.shortcuts import render,redirect
from productapp.models import ProductModel
from productapp.forms import ProductForm
from django.core.paginator import Paginator , EmptyPage , PageNotAnInteger

# Create your views here.
def addproduct(request):
	form = ProductForm()
	if request.method == 'POST':
		form=ProductForm(request.POST , request.FILES)
		if form.is_valid():
			form.save()
			return redirect('/productapp/showproduct/')
	return render(request ,'productapp/addproduct.html',{'form':form})
	
def showproduct(request):
	product=Paginator(ProductModel.objects.all(),6)
	page=request.GET.get('page')
	try:
		products = product.page(page)
	except PageNotAnInteger:
		products = product.page(1)
	except EmptyPage:
		products = product.page(products.num_page)
	return render(request ,'productapp/showproduct.html',{'products': products})
	
def deleteproduct(request,id):
	product = ProductModel.objects.get(id=id)
	product.delete()
	return redirect('/productapp/showproduct/')
	
def updateproduct(request,id):
	foundproduct = ProductModel.objects.get(id=id)
	form = ProductForm(instance=foundproduct)
	if request.method == 'POST':
		form=ProductForm(request.POST,request.FILES ,instance=foundproduct)
		if form.is_valid():
			form.save()
			return redirect('/productapp/showproduct/')
	return render(request ,'productapp/updateproduct.html',{'form':form})
			