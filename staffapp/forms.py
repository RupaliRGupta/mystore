from django import forms
from staffapp.models import StaffModel

# Create your tests here.
class StaffForm(forms.ModelForm):
	class Meta:
		model = StaffModel
		fields='__all__'
