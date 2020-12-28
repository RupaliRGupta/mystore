from django.db import models

# Create your models here.
class StaffModel(models.Model):
	name=models.CharField(max_length=30)
	email=models.CharField(max_length=30)
	password=models.CharField(max_length=30)
	role=models.CharField(max_length=7, default='staff', editable=False)
	class Meta:
		db_table='tbl_staff'
		
		
class AdminModel(models.Model):
	username=models.CharField(max_length=30, default='admin', editable=False)		
	password=models.CharField(max_length=30, default='admin', editable=False)
	role=models.CharField(max_length=7, default='admin', editable=False)
	class Meta:
		db_table='tbl_admin'