from django import forms
from productapp.models import ProductModel

# Create your tests here.
class ProductForm(forms.ModelForm):
	class Meta:
		model = ProductModel
		fields='__all__'