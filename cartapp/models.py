from django.db import models

# Create your models here.
class CartModel(models.Model):
	productfk=models.IntegerField()
	productquantity=models.IntegerField()
	emailfk=models.EmailField()
	class Meta:
		db_table='tbl_cart'