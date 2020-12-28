from django import forms
from customerapp.models import CustomerModel

class CustomerForm(forms.ModelForm):
	email=forms.CharField(widget=forms.EmailInput)
	password=forms.CharField(widget=forms.PasswordInput)
	class Meta:
		model = CustomerModel
		fields='__all__'