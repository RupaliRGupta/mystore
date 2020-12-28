from django.db import models

# Create your models here.
class CustomerModel(models.Model):
	fname = models.CharField(max_length=30)
	lname = models.CharField(max_length=30)
	addresss = models.CharField(max_length=70)
	email=models.CharField(max_length=30)
	contact=models.CharField(max_length=30)
	password=models.CharField(max_length=30)
	role = models.CharField(max_length=7, default='user', editable=False)
	utypes=[('User','User'),('Admin','Admin')]
	class Meta:
		db_table ='tbl_customer'